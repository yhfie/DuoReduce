//mlir-opt --int-range-optimizations --canonicalize --convert-arith-to-llvm test.mlir
module {
  func.func @func1() {
    %false = arith.constant false
    %false_0 = arith.constant false
    // These two constant values can just be declared as both true or both false and cannot be removed

    %c2_i16 = arith.constant 2 : i16
    %7 = arith.addi %c2_i16, %c2_i16 : i16
    %31 = math.absi %c2_i16 : i16
    // This operation can be changed to math.cttz or math.ctlz, but then the frequency of causing crashes will change from always to sometimes

    %32 = arith.cmpi sge, %7, %31 : i16
    //This comparison attribute can be any type supported in the arith.cmpi operation

    vector.print %32 : i1
    return
  }
}
