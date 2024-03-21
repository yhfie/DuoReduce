//~/circt/llvm/build/bin/mlir-opt --arith-expand --arith-unsigned-when-equivalent --int-range-optimizations 82158.mlir
//~/circt/llvm/build/bin/mlir-opt --int-range-optimizations 82158.mlir
module {
  func.func @func1() {
    %c8_i32 = arith.constant 8 : i32
    %c29326_i32 = arith.constant 29326 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32

    %30 = arith.shrsi %c29326_i32, %c2_i32 : i32 // the result should be 7331, which is 1110010100011 of binary
    %47 = math.ctpop %30 : i32 // the result should be 7
    %57 = arith.shli %47, %c1_i32 : i32 // the result should be 14
    %65 = arith.ceildivsi %57, %c8_i32 : i32 // the result should be 2
    vector.print %65 : i32
    return
  }
}
