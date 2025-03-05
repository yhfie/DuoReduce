module {
  llvm.func @func2() -> vector<4xf16> {
    %cst0_i32 = spirv.Constant 0 : i32
    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %44 = llvm.mlir.constant(0 : index) : i64
    %65 = builtin.unrealized_conversion_cast %44 : i64 to index
    cf.br ^bb173(%1 : index)
  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177
    cf.br ^bb175(%1 : index)
  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176
    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32
    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32
    cf.br ^bb175(%65 : index)
  }
  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {
    %cst0_i32 = spirv.Constant 0 : i32
    %cst1_i32 = spirv.Constant 1 : i32
    %cst-1_i32 = spirv.Constant -1 : i32
    %0 = spirv.IEqual %arg1, %cst0_i32 : i32
    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2
  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10
    spirv.ReturnValue %1 : i32
  ^bb2:  // pred: ^bb0
    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32
    %8 = spirv.INotEqual %7, %cst0_i32 : i32
    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)
  }
}
