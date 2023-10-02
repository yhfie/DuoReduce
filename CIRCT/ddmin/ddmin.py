import subprocess
import sys
from typing import List
import re
from itertools import combinations

output_log_file = "output.log"
MLIR_filename = "test.mlir"
PASS_PHASES = [
    "esi-connect-services",
    "lower-hwarith-to-hw",
    "lower-scf-to-calyx, canonicalize",
    "msft-lower-constructs, msft-lower-instances",
    "esi-emit-collateral{schema-file=schema.capnp}",
    "lower-msft-to-hw",
    "hw.module(lower-seq-hlmem)",
    "lower-esi-to-physical, lower-esi-ports",
    "lower-esi-to-hw",
    "convert-fsm-to-sv",
    "lower-seq-to-sv",
    "cse, canonicalize, cse",
    "lower-calyx-to-hw, canonicalize",
    "hw.module(prettify-verilog), hw.module(hw-cleanup)",
    "msft-export-tcl{tcl-file=target.tcl}"
]

first_exe_flag = 1
compiler_variants = []


def unique_ordered_elements(elements):
    seen = set()
    unique_elements = []
    for element in elements:
        if element[0] == "@":
            element = element[1:]
        if element not in seen:
            seen.add(element)
            unique_elements.append(element)
    return unique_elements


def find_subsets(input_list):
    output_list = []
    for i in range(1, len(input_list) + 1):
        for combination in combinations(input_list, i):
            output_list.append(",".join(combination))
    return output_list


def get_possible_pass(input_code: str):
    global PASS_PHASES

    pattern = re.compile(r'([^-,\s]+)(?:-([^-,]+))?(?:-([^-,]+))?')
    new_pass = []
    for passes in PASS_PHASES:
        if "cse" in passes:
            new_pass.append(passes)
            continue
        if "canonicalize" in passes:
            new_pass.append(passes)
            continue

        matches = pattern.findall(passes)
        result = unique_ordered_elements([item for match in matches for item in match if item])
        for item in result:
            if item in input_code:
                new_pass.append(passes)
                continue

    PASS_PHASES = new_pass
    print("Possible Pass:")
    print(PASS_PHASES)
    global compiler_variants
    compiler_variants = find_subsets(PASS_PHASES)


def is_valid_execution(executed, process):  # check if the execution is valid or not. Return true if valid
    if executed + process in compiler_variants:
        return True
    try:
        output = subprocess.check_output(["/home/jiyuan/circt/build/bin/circt-opt",
                                          "-pass-pipeline=" + executed + process + ",export-verilog,"
                                                                                   "export-split-verilog",
                                          MLIR_filename], stderr=subprocess.STDOUT, text=True)
        with open(output_log_file, "w") as f:
            f.write(output)
    except subprocess.CalledProcessError as error:
        return False

    compiler_variants.append(executed + process)
    return True


def find_dependencies(executed, process):
    a = set()
    for item in executed:
        flag = is_valid_execution(executed - item,
                                  process)  # if we delete an item and results in invalid execution, then this item should be include in dependency
        if not flag:
            a.add(item)
    return a


def dfs(processes, executed, dependencies, path, invalid_executions_cache):
    if not processes:
        if len(path) > 0 and path[-1] == 'export-verilog':
            compiler_variants.append(path)
        return

    process = processes[0]
    next_processes = processes[1:]

    # Execute the process
    if process not in executed:

        can_execute = is_valid_execution(executed, process)

        if can_execute:
            new_executed = executed | {process}
            new_dependencies = dependencies.copy()
            new_dependencies[process] = find_dependencies(executed, process)
            dfs(next_processes, new_executed, new_dependencies, path + [process], invalid_executions_cache)

    # Skip the process
    dfs(next_processes, executed, dependencies, path, invalid_executions_cache)


# Jiyuan: maybe we can start from 3rd IR. TypeAlias seems related with system.py

def contact_verilog_code(filename_list):
    contact_code = ""
    for filename in filename_list:
        if not ("sv" in filename):
            filename = filename+".sv"
        with open(filename, "r") as file:
            contact_code = contact_code + file.read()
    return contact_code


# should add with fused location information (set tag in #snapshot-location), no idea why it can't.
# Now the tracing is done from the desired IR level (ex. IR=4)
# TODO Jiyuan: now the fused information is manually added, should add all fused location information before testing
def location_information_parse(input_text_tracing="", IR=4):
    # input_text_tracing = '''
    # .a      (32'h3),    // after_phase_4.mlir:5:12783; after_phase_3.mlir:3:124
    # .b      (32'h0),    // after_phase_4.mlir:4:1243; after_phase_3.mlir:5:123
    # .b      (32'h1),    // after_phase_4.mlir:4:1243; after_phase_3.mlir:5:123
    # '''

    # Split the input text by lines

    lines = input_text_tracing.strip().split("\n")

    original_dict = {}

    for line in lines:
        # Split the line by '//' to separate the key-value part from the location information
        key_value, locations_text = line.split("//")

        # Remove trailing comma and whitespaces from the key-value part
        key_value = key_value.rstrip(", ").strip()

        # Split the locations_text by ', ' to get individual locations
        locations = locations_text.split("; ")

        # Extract the phase number and line number from each location
        parsed_locations = []
        for loc in locations:
            phase_str, line_col_str = loc.split(".mlir:")
            phase_num = int(phase_str.split("_")[-1])  # Extract the phase number after the last '_'
            line_num = int(line_col_str.split(":")[0])
            parsed_locations.append((phase_num, line_num))

        # Add the key-value and parsed_locations to the result_dict
        original_dict[key_value] = parsed_locations

    new_dict = {}

    for key, values in original_dict.items():
        for value in values:
            if value[0] == IR:
                if value in new_dict:
                    new_dict[value].append(key)
                else:
                    new_dict[value] = [key]

    for key, values in original_dict.items():
        for value in values:
            if value[0] != IR:
                for new_key in new_dict:
                    if key in new_dict[new_key]:
                        new_dict[new_key].append(value)

    print(new_dict)
    print(original_dict)
    return new_dict


def extract_error_type(output):
    match = re.search(r"\b\w+Error\b", output)
    if match:
        return match.group(0)
    return None


# TODO: Should be combined with differential testing
def test_ir_code(code: str) -> bool:
    # Replace this function with your specific test that returns True if the code causes a failure
    # and False otherwise. For example, you could use a subprocess to run an MLIR pass and check
    # the output or return code.

    global compiler_variants
    with open(MLIR_filename, "w") as f:
        f.write(code)
        f.close()

    generated_verilog_code = set()
    invalid_compiler_count = 0
    total_compiler_count = len(compiler_variants)
    valid_compiler_variants = []
    verilog_filename = unique_ordered_elements(sv_name_pattern.findall(code))
    if len(verilog_filename) == 0:
        print("no .sv name specified")
        print("Warning: using name of the module to find generated .sv file. May introduce bugs")
        verilog_filename = unique_ordered_elements(sv_possible_name_pattern.findall(code))
    if len(verilog_filename) == 0:
        print("no .sv file generated")
        return False
    for compiler in compiler_variants:
        try:
            output = subprocess.check_output(["/home/jiyuan/circt/build/bin/circt-opt",
                                              "-pass-pipeline=" + compiler + ",export-verilog,export-split-verilog",
                                              MLIR_filename], stderr=subprocess.STDOUT, text=True)
            with open(output_log_file, "w") as f:
                f.write(output)

            number = len(generated_verilog_code)

            try:
                generated_verilog_code.add(contact_verilog_code(verilog_filename))
            except FileNotFoundError:
                print("correct .sv not generated!")
                return False

            if number < len(generated_verilog_code):  #
                valid_compiler_variants.append(compiler)

        except subprocess.CalledProcessError as error:
            print("compilation error with " + compiler + ": " + error.output)
            invalid_compiler_count = invalid_compiler_count + 1

    if first_exe_flag == 1:
        compiler_variants = valid_compiler_variants  # Jiyuan: that's one time effort
        print("valid and unique compilation path:", len(valid_compiler_variants))
        print(valid_compiler_variants)
        print("invalid compilation path:", invalid_compiler_count)
        print("total compilation path:", total_compiler_count)
    if len(valid_compiler_variants) == 0:
        return False

    try:
        if not (".sv" in verilog_filename[0]):
            verilog_filename[0] = verilog_filename[0] + ".sv"
        s_compilation_command = ["verilator"] + ["-Wno-fatal"] + ["-cc"] + ["--trace"] + verilog_filename + [
            "--exe"] + ["testbench.cpp"] + ["--top-module"] + [verilog_filename[0][:-3]]
        output = subprocess.check_output(s_compilation_command, stderr=subprocess.STDOUT, text=True)
        output = subprocess.check_output(["make", "-j", "-C", "obj_dir/", "-f", "V" + verilog_filename[0][:-3] + ".mk"],
                                         stderr=subprocess.STDOUT, text=True)
    except subprocess.CalledProcessError as error:
        print("simulator compilation error: " + error.output)
        return False

    try:
        output = subprocess.check_output(["./obj_dir/V" + verilog_filename[0][:-3]], stderr=subprocess.STDOUT,
                                         text=True)
        with open(output_log_file, "w") as f:
            print("compilation output:" + output)
            f.write(output)
    except subprocess.CalledProcessError as error:
        print("execution error: " + error.output)
        return False

    try:
        output = subprocess.check_output(["mkdir", str(first_exe_flag) + "/"], stderr=subprocess.STDOUT,
                                         text=True)
        s_compilation_command = ["mv"] + verilog_filename + [str(first_exe_flag) + "/"]
        output = subprocess.check_output(s_compilation_command, stderr=subprocess.STDOUT, text=True)
    except subprocess.CalledProcessError as error:
        print(error)
        return False
    # TODO: Above code is tested. Need to think about differential testing =>
    #  now the generated .sv files only contains the last successful compilation:
    #  should have all successful and unique compilation. And the code is stored in generated_verilog_code: see line 138
    return True


# TODO: mapping undone
def ddmin_ir(code: str) -> str:
    def split_code(code: List[str], n: int) -> List[List[str]]:
        k, m = divmod(len(code), n)
        print("k:", k)
        print("m:", m)
        return [code[:i] + code[min(i + n, len(code)):] for i in range(len(code) - n)]

    def minimize(code: List[str]) -> (List[str], bool):
        if len(code) == 1:
            return code, False

        n = len(code)
        while len(code) >= n > 0:
            subsets = split_code(code, n)
            print("now at deletion level:", n)
            for subset in subsets:
                subset_code = '\n'.join(subset)
                for code_1, code_2 in zip(code, subset):
                    if code_1 != code_2:
                        print("delete start:", code_1)
                        break
                if test_ir_code(subset_code):
                    print("pass test!")
                    # print(subset_code)
                    # TODO: Mapping has bugs
                    # line_index = 0
                    # for code_line in subset:
                    #     while code_line != code_dictionary[line_index][0]:
                    #         minimized_map.remove(line_index)
                    #         line_index = line_index + 1
                    return subset_code.strip().split('\n'), True
            n = n - 1

        return code, False

    code_lines = code.strip().split('\n')
    minimized_code_lines = code_lines
    code_dictionary = [(code_lines[i], i) for i in range(len(code_lines))]
    minimized_map = [i for i in range(len(code_lines))]
    flag = test_ir_code(code)
    print("initial flag:", flag)
    global first_exe_flag
    first_exe_flag = first_exe_flag + 1
    while flag:
        minimized_code_lines, flag = minimize(minimized_code_lines)
        first_exe_flag = first_exe_flag + 1

    return '\n'.join(minimized_code_lines)


if __name__ == '__main__':
    #     Example usage:
    original_ir_code_file = sys.argv[1]
    f = open(original_ir_code_file, "r")
    original_ir_code = f.read()

    #     original_ir_code = """
    # // <python code>
    # module {
    #   msft.module @PolynomialSystem {} () -> (y: i32) attributes {childAppIDBases = ["poly"], fileName = "PolynomialSystem.sv"} {
    #     %c23_i32 = hw.constant 23 : i32
    #     %example.y = msft.instance @example @PolyComputeForCoeff__62__42__6_(%c23_i32)  {msft.appid = #msft.appid<"poly"[0]>} : (i32) -> i32
    #     %example2.y = msft.instance @example2 @PolyComputeForCoeff__62__42__6_(%example.y)  : (i32) -> i32
    #     %example2_1.y = msft.instance @example2_1 @PolyComputeForCoeff__1__2__3__4__5_(%example.y)  : (i32) -> i32
    #     %c23_i32_0 = hw.constant 23 : i32
    #     %b = hw.constant 0 : i32
    #     %0 = comb.divs %example.y, %b : i32
    #     msft.output %0 : i32
    #   }
    #   msft.module @PolyComputeForCoeff__62__42__6_ {coefficients = {coeff = [62, 42, 6]}} (%x: i32) -> (y: i32) attributes {fileName = "PolynomialCompute.sv"} {
    #     %c62_i32 = hw.constant 62 : i32
    #     %c42_i32 = hw.constant 42 : i32
    #     %0 = comb.mul %c42_i32, %x : i32
    #     %1 = comb.add %c62_i32, %0 : i32
    #     %c6_i32 = hw.constant 6 : i32
    #     %2 = comb.mul %x, %x : i32
    #     %3 = comb.mul %c6_i32, %2 : i32
    #     %4 = comb.add %1, %3 : i32
    #     msft.output %4 : i32
    #   }
    #   msft.module @PolyComputeForCoeff__1__2__3__4__5_ {coefficients = {coeff = [1, 2, 3, 4, 5]}} (%x: i32) -> (y: i32) attributes {fileName = "PolynomialCompute.sv"} {
    #     %c1_i32 = hw.constant 1 : i32
    #     %c2_i32 = hw.constant 2 : i32
    #     %0 = comb.mul %c2_i32, %x : i32
    #     %1 = comb.add %c1_i32, %0 : i32
    #     %c3_i32 = hw.constant 3 : i32
    #     %2 = comb.mul %x, %x : i32
    #     %3 = comb.mul %c3_i32, %2 : i32
    #     %4 = comb.add %1, %3 : i32
    #     %c4_i32 = hw.constant 4 : i32
    #     %5 = comb.mul %x, %x, %x : i32
    #     %6 = comb.mul %c4_i32, %5 : i32
    #     %7 = comb.add %4, %6 : i32
    #     %c5_i32 = hw.constant 5 : i32
    #     %8 = comb.mul %x, %x, %x, %x : i32
    #     %9 = comb.mul %c5_i32, %8 : i32
    #     %10 = comb.add %7, %9 : i32
    #     msft.output %10 : i32
    #   }
    # }
    #
    #     """

    get_possible_pass(original_ir_code)
    sv_name_pattern = re.compile(r'fileName\s*=\s*"([^"]*.sv)"')
    sv_possible_name_pattern = re.compile(r'@\w+')

    # file = open(sys.argv[1], "r")
    # original_ir_code = file.read()
    # file.close()

    # initial_tracing_dict = location_information_parse(input_text_tracing=original_sv_code)

    minimized_ir_code = ddmin_ir(original_ir_code)
    print("Minimized IR code:")
    print(minimized_ir_code)
    print("compiler fault chain:")
    print(compiler_variants)
    # processes = [f'a{i}' for i in range(1, 101)]
    # dfs(processes, set(), {}, [], {})
