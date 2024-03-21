module {
  func.func @main() {
    %cst_0 = arith.constant 1.280000e+02 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    //scf.for %arg0 = %c0 to %c128 step %c1 {
    //  scf.for %arg1 = %c0 to %c128 step %c1 {
        %4 = arith.constant 0 : i1
        cf.assert %4, "Matmul does not produce the right output"
    //  }
    //}
    return
  }
}