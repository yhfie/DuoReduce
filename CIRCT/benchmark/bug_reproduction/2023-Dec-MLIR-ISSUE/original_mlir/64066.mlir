//mlir-opt  -pass-pipeline='builtin.module(async-func-to-async-runtime,async-to-async-runtime)' temp.mlir
module {
  func.func nested @func1(%arg0: index, %arg1: memref<?x?xi32>, %arg2: index) {
    %c20895_i16 = arith.constant 20895 : i16
    %c2 = arith.constant 2 : index
    %c31 = arith.constant 31 : index
    %21 = vector.broadcast %c20895_i16 : i16 to vector<14xi16>
    %false_22 = arith.constant false
    scf.index_switch %c2
    default {
      scf.if %false_22 {
        %143 = vector.insertelement %c20895_i16, %21[%c31 : index] : vector<14xi16>
      }
    }
    return
  }
}
