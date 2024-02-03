dependency: {}
passed compiler: [['int-range-optimizations']]
initial error: mlir-opt: /home/jiyuan/circt/llvm/llvm/lib/Support/APInt.cpp:283: int llvm::APInt::compare(const llvm::APInt&) const: Assertion `BitWidth == RHS.BitWidth && "Bit widths must be same for comparison"' failed.
valid and unique compilation path: 1
valid and unique compilation path: [['int-range-optimizations']]
Execution time: 17.207754373550415 seconds
initial flag: (True, 'mlir-opt: /home/jiyuan/circt/llvm/llvm/lib/Support/APInt.cpp:283: int llvm::APInt::compare(const llvm::APInt&) const: Assertion `BitWidth == RHS.BitWidth && "Bit widths must be same for comparison"\' failed.')
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
k: 1
now at deletion level: 12
k: 2
now at deletion level: 11
k: 2
now at deletion level: 10
['//mlir-opt --int-range-optimizations a.mlir', 'func.func private @func1() -> index {', '  %c30 = arith.constant 30 : index', '  %2 = builtin.unrealized_conversion_cast %c30 : index to i32', '  llvm.return %2 : i32', '}', 'llvm.func @func2() {', '  %c0 = arith.constant 0 : index', '  %52 = func.call @func1() : () -> index', '  %62 = index.maxu %c0, %52', '  llvm.return', '}']
k: 1
now at deletion level: 11
k: 1
now at deletion level: 10
k: 1
now at deletion level: 9
k: 1
now at deletion level: 8
k: 1
now at deletion level: 7
k: 2
now at deletion level: 6
k: 2
now at deletion level: 5
k: 3
now at deletion level: 4
k: 4
now at deletion level: 3
k: 6
now at deletion level: 2
k: 12
TEST Compiler [['int-range-optimizations']]
pass test!
now at deletion level: 1
['func.func private @func1() -> index {', '  %c30 = arith.constant 30 : index', '  %2 = builtin.unrealized_conversion_cast %c30 : index to i32', '  llvm.return %2 : i32', '}', 'llvm.func @func2() {', '  %c0 = arith.constant 0 : index', '  %52 = func.call @func1() : () -> index', '  %62 = index.maxu %c0, %52', '  llvm.return', '}']
k: 1
now at deletion level: 10
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
k: 11
now at deletion level: 1
Minimized IR code:
func.func private @func1() -> index {
  %c30 = arith.constant 30 : index
  %2 = builtin.unrealized_conversion_cast %c30 : index to i32
  llvm.return %2 : i32
}
llvm.func @func2() {
  %c0 = arith.constant 0 : index
  %52 = func.call @func1() : () -> index
  %62 = index.maxu %c0, %52
  llvm.return
}
compiler fault chain:
[['int-range-optimizations']]
