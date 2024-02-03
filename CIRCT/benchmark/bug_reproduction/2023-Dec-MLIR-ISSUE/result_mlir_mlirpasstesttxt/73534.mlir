dependency: {}
passed compiler: [['convert-cf-to-llvm']]
initial error: mlir-opt: /home/jiyuan/circt/llvm/mlir/include/mlir/IR/Matchers.h:402: bool mlir::matchPattern(mlir::Value, const Pattern&) [with Pattern = mlir::detail::constant_op_binder<mlir::Attribute>]: Assertion `value' failed.
valid and unique compilation path: 1
valid and unique compilation path: [['convert-cf-to-llvm']]
Execution time: 17.289915323257446 seconds
initial flag: (True, "mlir-opt: /home/jiyuan/circt/llvm/mlir/include/mlir/IR/Matchers.h:402: bool mlir::matchPattern(mlir::Value, const Pattern&) [with Pattern = mlir::detail::constant_op_binder<mlir::Attribute>]: Assertion `value' failed.")
k: 1
now at deletion level: 24
k: 1
now at deletion level: 23
k: 1
now at deletion level: 22
k: 1
now at deletion level: 21
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
k: 2
now at deletion level: 12
k: 2
now at deletion level: 11
k: 2
now at deletion level: 10
['//mlir-opt --convert-cf-to-llvm a.mlir', 'func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {', '  %cst_6 = arith.constant dense<true> : vector<10xi1>', '  %cst_8 = arith.constant dense<true> : vector<27xi1>', '    %c1 = arith.constant 1 : index', '    %c2 = arith.constant 2 : index', '    %c3 = arith.constant 3 : index', '    %c4 = arith.constant 4 : index', '    %c5 = arith.constant 5 : index', '    %c7 = arith.constant 7 : index', '    %c6 = arith.constant 6 : index', '  %6 = llvm.mlir.constant(24583 : i16) : i16', '  %7 = vector.mask %cst_8 { vector.mask %cst_6 { vector.multi_reduction <and>, %cst_6, %cst_6 [] : vector<10xi1> to vector<10xi1> } : vector<10xi1> -> vector<10xi1> } : vector<27xi1> -> vector<27xi1>', '  return', '}']
k: 1
now at deletion level: 14
k: 1
now at deletion level: 13
k: 1
now at deletion level: 12
k: 1
now at deletion level: 11
k: 1
now at deletion level: 10
k: 1
now at deletion level: 9
k: 1
now at deletion level: 8
['//mlir-opt --convert-cf-to-llvm a.mlir', 'func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {', '  %cst_6 = arith.constant dense<true> : vector<10xi1>', '  %cst_8 = arith.constant dense<true> : vector<27xi1>', '  %7 = vector.mask %cst_8 { vector.mask %cst_6 { vector.multi_reduction <and>, %cst_6, %cst_6 [] : vector<10xi1> to vector<10xi1> } : vector<10xi1> -> vector<10xi1> } : vector<27xi1> -> vector<27xi1>', '  return', '}']
k: 1
now at deletion level: 6
k: 1
now at deletion level: 5
k: 1
now at deletion level: 4
k: 2
now at deletion level: 3
k: 3
now at deletion level: 2
k: 7
now at deletion level: 1
['func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {', '  %cst_6 = arith.constant dense<true> : vector<10xi1>', '  %cst_8 = arith.constant dense<true> : vector<27xi1>', '  %7 = vector.mask %cst_8 { vector.mask %cst_6 { vector.multi_reduction <and>, %cst_6, %cst_6 [] : vector<10xi1> to vector<10xi1> } : vector<10xi1> -> vector<10xi1> } : vector<27xi1> -> vector<27xi1>', '  return', '}']
k: 1
now at deletion level: 5
k: 1
now at deletion level: 4
k: 2
now at deletion level: 3
k: 3
now at deletion level: 2
k: 6
now at deletion level: 1
Minimized IR code:
func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {
  %cst_6 = arith.constant dense<true> : vector<10xi1>
  %cst_8 = arith.constant dense<true> : vector<27xi1>
  %7 = vector.mask %cst_8 { vector.mask %cst_6 { vector.multi_reduction <and>, %cst_6, %cst_6 [] : vector<10xi1> to vector<10xi1> } : vector<10xi1> -> vector<10xi1> } : vector<27xi1> -> vector<27xi1>
  return
}
compiler fault chain:
[['convert-cf-to-llvm']]
