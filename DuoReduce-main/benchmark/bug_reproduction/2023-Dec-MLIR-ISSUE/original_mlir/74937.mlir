//mlir-opt --arith-unsigned-when-equivalent a.mlir
// Seems that there are always troubles with integer and index...
// Will crash with any bit width except 64
// can be localized with mutation-based delta-debugging
func.func private @func1() -> index {
  %1 = arith.constant 1 : i1
  llvm.return %1 : i1
}
func.func @func2() {
  %8 = call @func1() : () -> index
  llvm.return
}