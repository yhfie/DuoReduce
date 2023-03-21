# jiyuan: undone. Now it run with the given toy example. It is fixed. However, the ddmin algorithm seems have problem.
# It cannot reduce to the minimal size. Check with toy example
import ast
import astunparse
import re
import subprocess
filename = "test.py"


def has_compilation_error(code):
    try:
        ast.parse(code)
    except SyntaxError as error:
        print(type(error))
        return True
    return False


def extract_error_type(output):
    match = re.search(r"\b\w+Error\b", output)
    if match:
        return match.group(0)
    return None


def has_runtime_error(code):
    with open(filename, "w") as f:
        f.write(code)
        f.close()
    try:
        output = subprocess.check_output(["python3", filename, "test_ddmin"], stderr=subprocess.STDOUT, text=True)
    except subprocess.CalledProcessError as error:
        print("\n Error occur\n")
        print("Output:")
        print(error.output)
        error_type = extract_error_type(error.output)
        if error_type:
            if (error_type=="NameError") or (error_type=="SyntaxError"):
                return False
            return True
    print("\nNo Error occur\n")
    return False


def children(node):
    if not hasattr(node, "_fields"):
        return []
    child_nodes = []
    for field in node._fields:
        child = getattr(node, field)
        if isinstance(child, list):
            child_nodes.extend(child)
        elif isinstance(child, ast.AST):
            child_nodes.append(child)
    return child_nodes


def reduce_node(node, test, depth=0):
    if not children(node) or depth > 2:
        return node

    print("now at: \n")
    print(astunparse.unparse(node))
    print("enumeration start.\n")
    for field in node._fields:
        child = getattr(node, field)
        if not isinstance(child, list):
            continue

        reduced_children = []
        for i, element in enumerate(child):
            reduced_child = child[:i] + child[i + 1:]
            setattr(node, field, reduced_child)
            if test(node):
                reduced_children = reduced_child
                print("Error code:\n")
                print(astunparse.unparse(node))
                print("Code End.\n")
                break
            else:
                setattr(node, field, child)

        if reduced_children:
            setattr(node, field, reduced_children)
            break

    for child in children(node):
        reduce_node(child, test, depth+1)

    return node


def hdd(input_code):
    #if (not has_compilation_error(input_code)) and (not has_runtime_error(input_code)):
    if not has_runtime_error(input_code):
        raise ValueError("Input should have a compilation or runtime error")

    tree = ast.parse(input_code)

    def test(node):
        #return has_compilation_error(astunparse.unparse(node)) or has_runtime_error(astunparse.unparse(node))
        return has_runtime_error(astunparse.unparse(node))

    reduced_tree = reduce_node(tree, test, depth=0)
    return astunparse.unparse(reduced_tree)


if __name__ == "__main__":
    code_with_error = '''
def foo():
    a = 5
    b = 7
    c = a + b
    return c

def bar():
    d = 8
    e = 0
    f = d / e
    return f


class Example:
    def method(self):
        return bar()

if __name__ == "__main__":
    b = bar()
'''

    esi_code = '''
# RUN: rm -rf %t
# RUN: %PYTHON% %s %t 2>&1 | FileCheck %s
# RUN: FileCheck %s --input-file %t/PolynomialCompute.sv --check-prefix=OUTPUT

from __future__ import annotations

import pycde
from pycde import (AppID, Input, Output, module, externmodule, generator, types)
from pycde.dialects import comb, hw
from circt.support import connect

import sys


@module
def PolynomialCompute(coefficients: Coefficients):

  class PolynomialCompute:
    """Module to compute ax^3 + bx^2 + cx + d for design-time coefficients"""

    # Evaluate polynomial for 'x'.
    #x = Input(types.i64)
    x = Input(types.i32)
    y = Output(types.int(8 * 4))

    def __init__(self, name: str):
      """coefficients is in 'd' -> 'a' order."""
      self.instance_name = name

    @staticmethod
    def get_module_name():
      return f"PolyComputeForCoeff_{coefficients.coeff}"

    @generator
    def construct(mod):
      """Implement this module for input 'x'."""

      x = mod.x
      taps = list()
      for power, coeff in enumerate(coefficients.coeff):
        coeffVal = hw.ConstantOp(types.i32, coeff)
        if power == 0:
          newPartialSum = coeffVal
        else:
          partialSum = taps[-1]
          if power == 1:
            currPow = x
          else:
            x_power = [x for i in range(power)]
            currPow = comb.MulOp(*x_power)
          newPartialSum = comb.AddOp(partialSum, comb.MulOp(coeffVal, currPow))

        taps.append(newPartialSum)

      # Final output
      mod.y = taps[-1]

  return PolynomialCompute


@externmodule("supercooldevice")
class CoolPolynomialCompute:
  x = Input(types.i32)
  y = Output(types.i32)

  def __init__(self, coefficients):
    self.coefficients = coefficients


@externmodule("parameterized_extern")
def ExternWithParams(a, b):

  typedef1 = types.struct({"a": types.i1}, "exTypedef")

  class M:
    pass

  return M


class Coefficients:

  def __init__(self, coeff):
    self.coeff = coeff


@module
class PolynomialSystem:
  y = Output(types.i32)

  @generator
  def construct(ports):
    i32 = types.i128
    x = hw.ConstantOp(i32, 23)
    x1 = hw.ConstantOp(i32, 45)
    poly = PolynomialCompute(Coefficients([62, 42, 6]))("example",
                                                        appid=AppID("poly", 0))
    connect(poly.x, x)
    connect(poly.x, x1)
    PolynomialCompute(coefficients=Coefficients([62, 42, 6]))("example2",
                                                              x=poly.y)
    PolynomialCompute(Coefficients([8, 2, 3, 4, 5]))("example2", x=poly.y)
    

    cp = CoolPolynomialCompute([4, 42])
    cp.x.connect(23)

    m = ExternWithParams(8, 3)()
    m.name = "pexternInst"

    ports.y = poly.y


poly = pycde.System([PolynomialSystem],
                    name="PolynomialSystem",
                    output_directory=sys.argv[1])
poly.print()

print("Generating 1...")
poly.generate(iters=1)

print("Printing...")
poly.print()

print("Generating rest...")
poly.generate()

print("=== Post-generate IR...")
poly.run_passes()
poly.print()


poly.emit_outputs()
    '''

    minimized_code = hdd(code_with_error)
    print("Minimized code:")
    print(minimized_code)
