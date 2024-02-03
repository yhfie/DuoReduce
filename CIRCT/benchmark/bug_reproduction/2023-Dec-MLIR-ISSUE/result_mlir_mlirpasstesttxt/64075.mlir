python3 ddmin/ddmin.py benchmark/bug_reproduction/2023-Dec-MLIR-ISSUE/added_mlir/64075.mlir ~/circt/llvm/build/bin/mlir-opt ddmin/mlir-pass-test.txt 4
dependency: {}
passed compiler: [['(test-vector-unrolling-patterns{unroll-based-on-type})']]
initial error: mlir-opt: /home/jiyuan/circt/llvm/llvm/include/llvm/Support/Casting.h:566: decltype(auto) llvm::cast(const From&) [with To = mlir::VectorType; From = mlir::Type]: Assertion `isa<To>(Val) && "cast<Ty>() argument of incompatible type!"' failed.
valid and unique compilation path: 1
valid and unique compilation path: [['(test-vector-unrolling-patterns{unroll-based-on-type})']]
Execution time: 17.90088176727295 seconds
initial flag: (True, 'mlir-opt: /home/jiyuan/circt/llvm/llvm/include/llvm/Support/Casting.h:566: decltype(auto) llvm::cast(const From&) [with To = mlir::VectorType; From = mlir::Type]: Assertion `isa<To>(Val) && "cast<Ty>() argument of incompatible type!"\' failed.')
k: 1
now at deletion level: 20
k: 1
now at deletion level: 19
k: 1
now at deletion level: 18
k: 1
now at deletion level: 17
k: 1
now at deletion level: 16
k: 1
now at deletion level: 15
k: 1
now at deletion level: 14
k: 1
now at deletion level: 13
k: 1
now at deletion level: 12
k: 1
now at deletion level: 11
TEST Compiler [['(test-vector-unrolling-patterns{unroll-based-on-type})']]
pass test!
['//mlir-opt -test-vector-unrolling-patterns=unroll-based-on-type temp.mlir', 'module {', '  func.func nested @func1(%arg0: i64, %arg1: memref<?x?xf16>, %arg2: i16) -> f32 {', '    %cst_1 = arith.constant 1.0 : f32', '    %23 = vector.broadcast %cst_1 : f32 to vector<23x8xf32>', '    %24 = vector.extract_strided_slice %23 {offsets = [14], sizes = [6], strides = [1]} : vector<23x8xf32> to vector<6x8xf32>', '    %115 = vector.multi_reduction <minf>, %24, %cst_1 [0, 1] : vector<6x8xf32> to f32', '    return %115 : f32', '  }', '}']
k: 1
now at deletion level: 9
k: 1
now at deletion level: 8
k: 1
now at deletion level: 7
k: 1
now at deletion level: 6
k: 2
now at deletion level: 5
k: 2
now at deletion level: 4
k: 3
now at deletion level: 3
k: 5
now at deletion level: 2
k: 10
now at deletion level: 1
TEST Compiler [['(test-vector-unrolling-patterns{unroll-based-on-type})']]
pass test!
['module {', '  func.func nested @func1(%arg0: i64, %arg1: memref<?x?xf16>, %arg2: i16) -> f32 {', '    %cst_1 = arith.constant 1.0 : f32', '    %23 = vector.broadcast %cst_1 : f32 to vector<23x8xf32>', '    %24 = vector.extract_strided_slice %23 {offsets = [14], sizes = [6], strides = [1]} : vector<23x8xf32> to vector<6x8xf32>', '    %115 = vector.multi_reduction <minf>, %24, %cst_1 [0, 1] : vector<6x8xf32> to f32', '    return %115 : f32', '  }', '}']
k: 1
now at deletion level: 8
k: 1
now at deletion level: 7
k: 1
now at deletion level: 6
k: 1
now at deletion level: 5
k: 2
now at deletion level: 4
k: 3
now at deletion level: 3
k: 4
now at deletion level: 2
k: 9
now at deletion level: 1
Minimized IR code:
module {
  func.func nested @func1(%arg0: i64, %arg1: memref<?x?xf16>, %arg2: i16) -> f32 {
    %cst_1 = arith.constant 1.0 : f32
    %23 = vector.broadcast %cst_1 : f32 to vector<23x8xf32>
    %24 = vector.extract_strided_slice %23 {offsets = [14], sizes = [6], strides = [1]} : vector<23x8xf32> to vector<6x8xf32>
    %115 = vector.multi_reduction <minf>, %24, %cst_1 [0, 1] : vector<6x8xf32> to f32
    return %115 : f32
  }
}
compiler fault chain:
[['(test-vector-unrolling-patterns{unroll-based-on-type})']]
