dependency: {}
passed compiler: [['arith-emulate-wide-int']]
initial error: PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.
valid and unique compilation path: 1
valid and unique compilation path: [['arith-emulate-wide-int']]
Execution time: 17.72376298904419 seconds
initial flag: (True, 'PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.')
k: 1
now at deletion level: 28
k: 1
now at deletion level: 27
k: 1
now at deletion level: 26
k: 1
now at deletion level: 25
k: 1
now at deletion level: 24
k: 1
now at deletion level: 23
k: 1
TEST Compiler [['arith-emulate-wide-int']]
pass test!
now at deletion level: 22
['//mlir-opt --arith-emulate-wide-int a.mlir', 'func.func @func2() {', '  %cst_0 = arith.constant dense<0> : vector<2xi64>', '  %cst_4 = arith.constant dense<true> : vector<2xi1>', '  %2 = vector.mask %cst_4 { vector.multi_reduction <xor>, %cst_0, %cst_0 [] : vector<2xi64> to vector<2xi64> } : vector<2xi1> -> vector<2xi64>', '  return', '}']
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
TEST Compiler [['arith-emulate-wide-int']]
pass test!
now at deletion level: 1
['func.func @func2() {', '  %cst_0 = arith.constant dense<0> : vector<2xi64>', '  %cst_4 = arith.constant dense<true> : vector<2xi1>', '  %2 = vector.mask %cst_4 { vector.multi_reduction <xor>, %cst_0, %cst_0 [] : vector<2xi64> to vector<2xi64> } : vector<2xi1> -> vector<2xi64>', '  return', '}']
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
func.func @func2() {
  %cst_0 = arith.constant dense<0> : vector<2xi64>
  %cst_4 = arith.constant dense<true> : vector<2xi1>
  %2 = vector.mask %cst_4 { vector.multi_reduction <xor>, %cst_0, %cst_0 [] : vector<2xi64> to vector<2xi64> } : vector<2xi1> -> vector<2xi64>
  return
}
compiler fault chain:
[['arith-emulate-wide-int']]
