module {
  func.func @omp_target() {
    %alloca = memref.alloca() : memref<64x64xf64>
    %0 = omp.map_info var_ptr(%alloca : memref<64x64xf64>, tensor<?xi32>) map_clauses(to) capture(ByRef) -> memref<64x64xf64>
    return
  }
}
