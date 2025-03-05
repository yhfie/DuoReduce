//mlir-opt --canonicalize a.mlir
func.func private @func1() {
  %false = arith.constant false
  %c0 = arith.constant 0 : index

  cf.cond_br %false, ^bb1, ^bb2
^bb1:  // pred: ^bb0
  omp.parallel {
    omp.wsloop for  (%arg0) : index = (%c0) to (%c0) step (%c0) {
      %189 = llvm.intr.stacksave : !llvm.ptr //this line leads to the error
      llvm.br ^bb1
    ^bb1:  // pred: ^bb0
      llvm.br ^bb2
    ^bb2:  // pred: ^bb1
      omp.yield
    }
    omp.terminator
  }
  cf.br ^bb2
^bb2:  // pred: ^bb0
  return
}