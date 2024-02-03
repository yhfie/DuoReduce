dependency: {}
passed compiler: [['inline']]
initial error: unimplemented spirv.ReturnValue in inliner
valid and unique compilation path: 1
valid and unique compilation path: [['inline']]
Execution time: 19.112380266189575 seconds
initial flag: (True, 'unimplemented spirv.ReturnValue in inliner')
k: 1
now at deletion level: 221
k: 1
now at deletion level: 220
k: 1
now at deletion level: 219
k: 1
now at deletion level: 218
k: 1
now at deletion level: 217
k: 1
now at deletion level: 216
k: 1
now at deletion level: 215
k: 1
now at deletion level: 214
k: 1
now at deletion level: 213
k: 1
now at deletion level: 212
k: 1
now at deletion level: 211
k: 1
now at deletion level: 210
k: 1
now at deletion level: 209
k: 1
now at deletion level: 208
k: 1
now at deletion level: 207
k: 1
now at deletion level: 206
k: 1
now at deletion level: 205
k: 1
now at deletion level: 204
k: 1
now at deletion level: 203
k: 1
now at deletion level: 202
k: 1
now at deletion level: 201
k: 1
now at deletion level: 200
k: 1
now at deletion level: 199
k: 1
now at deletion level: 198
k: 1
now at deletion level: 197
k: 1
now at deletion level: 196
k: 1
now at deletion level: 195
k: 1
now at deletion level: 194
k: 1
now at deletion level: 193
k: 1
now at deletion level: 192
k: 1
now at deletion level: 191
k: 1
now at deletion level: 190
k: 1
now at deletion level: 189
k: 1
now at deletion level: 188
k: 1
now at deletion level: 187
k: 1
now at deletion level: 186
['//mlir-opt --inline a.mlir', 'module {', '  llvm.func @malloc(i64) -> !llvm.ptr', '  llvm.func @func2() -> vector<4xf16> {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index', '    %3 = llvm.mlir.constant(64 : index) : i64', '    %41 = llvm.mlir.constant(4 : index) : i64', '    %44 = llvm.mlir.constant(0 : index) : i64', '    %54 = llvm.mlir.constant(32 : index) : i64', '    %56 = llvm.mlir.constant(1 : index) : i64', '    %65 = builtin.unrealized_conversion_cast %44 : i64 to index', '    cf.br ^bb173(%1 : index)', '  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177', '    cf.br ^bb175(%1 : index)', '  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176', '    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32', '', '    // Function call of __mlir_math_ipowi_i32', '    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32', '    cf.br ^bb175(%65 : index)', '  }', '  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %cst1_i32 = spirv.Constant 1 : i32', '    %cst-1_i32 = spirv.Constant -1 : i32', '    %0 = spirv.IEqual %arg1, %cst0_i32 : i32', '    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2', '  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10', '    spirv.ReturnValue %1 : i32', '  ^bb2:  // pred: ^bb0', '    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32', '    %8 = spirv.INotEqual %7, %cst0_i32 : i32', '    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)', '  }', '}']
k: 1
now at deletion level: 35
k: 1
now at deletion level: 34
k: 1
now at deletion level: 33
k: 1
now at deletion level: 32
k: 1
now at deletion level: 31
k: 1
now at deletion level: 30
k: 1
now at deletion level: 29
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
now at deletion level: 22
k: 1
now at deletion level: 21
k: 1
now at deletion level: 20
k: 1
now at deletion level: 19
k: 2
now at deletion level: 18
k: 2
now at deletion level: 17
k: 2
now at deletion level: 16
k: 2
now at deletion level: 15
k: 2
now at deletion level: 14
k: 2
now at deletion level: 13
k: 3
now at deletion level: 12
k: 3
now at deletion level: 11
k: 3
now at deletion level: 10
k: 4
now at deletion level: 9
k: 4
now at deletion level: 8
k: 5
now at deletion level: 7
k: 6
now at deletion level: 6
k: 7
now at deletion level: 5
k: 9
now at deletion level: 4
k: 12
now at deletion level: 3
k: 18
TEST Compiler [['inline']]
pass test!
TEST Compiler [['inline']]
pass test!
now at deletion level: 2
['//mlir-opt --inline a.mlir', 'module {', '  llvm.func @malloc(i64) -> !llvm.ptr', '  llvm.func @func2() -> vector<4xf16> {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index', '    %44 = llvm.mlir.constant(0 : index) : i64', '    %54 = llvm.mlir.constant(32 : index) : i64', '    %56 = llvm.mlir.constant(1 : index) : i64', '    %65 = builtin.unrealized_conversion_cast %44 : i64 to index', '    cf.br ^bb173(%1 : index)', '  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177', '    cf.br ^bb175(%1 : index)', '  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176', '    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32', '', '    // Function call of __mlir_math_ipowi_i32', '    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32', '    cf.br ^bb175(%65 : index)', '  }', '  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %cst1_i32 = spirv.Constant 1 : i32', '    %cst-1_i32 = spirv.Constant -1 : i32', '    %0 = spirv.IEqual %arg1, %cst0_i32 : i32', '    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2', '  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10', '    spirv.ReturnValue %1 : i32', '  ^bb2:  // pred: ^bb0', '    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32', '    %8 = spirv.INotEqual %7, %cst0_i32 : i32', '    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)', '  }', '}']
k: 1
now at deletion level: 33
k: 1
now at deletion level: 32
k: 1
now at deletion level: 31
k: 1
now at deletion level: 30
k: 1
now at deletion level: 29
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
now at deletion level: 22
k: 1
now at deletion level: 21
k: 1
now at deletion level: 20
k: 1
now at deletion level: 19
k: 1
now at deletion level: 18
k: 2
now at deletion level: 17
k: 2
now at deletion level: 16
k: 2
now at deletion level: 15
k: 2
now at deletion level: 14
k: 2
now at deletion level: 13
k: 2
now at deletion level: 12
k: 3
now at deletion level: 11
k: 3
now at deletion level: 10
k: 3
now at deletion level: 9
k: 4
now at deletion level: 8
k: 4
now at deletion level: 7
k: 5
now at deletion level: 6
k: 6
now at deletion level: 5
k: 8
now at deletion level: 4
k: 11
now at deletion level: 3
k: 17
TEST Compiler [['inline']]
pass test!
now at deletion level: 2
['//mlir-opt --inline a.mlir', 'module {', '  llvm.func @malloc(i64) -> !llvm.ptr', '  llvm.func @func2() -> vector<4xf16> {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index', '    %44 = llvm.mlir.constant(0 : index) : i64', '    %65 = builtin.unrealized_conversion_cast %44 : i64 to index', '    cf.br ^bb173(%1 : index)', '  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177', '    cf.br ^bb175(%1 : index)', '  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176', '    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32', '', '    // Function call of __mlir_math_ipowi_i32', '    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32', '    cf.br ^bb175(%65 : index)', '  }', '  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %cst1_i32 = spirv.Constant 1 : i32', '    %cst-1_i32 = spirv.Constant -1 : i32', '    %0 = spirv.IEqual %arg1, %cst0_i32 : i32', '    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2', '  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10', '    spirv.ReturnValue %1 : i32', '  ^bb2:  // pred: ^bb0', '    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32', '    %8 = spirv.INotEqual %7, %cst0_i32 : i32', '    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)', '  }', '}']
k: 1
now at deletion level: 31
k: 1
now at deletion level: 30
k: 1
now at deletion level: 29
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
now at deletion level: 22
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
k: 2
now at deletion level: 16
k: 2
now at deletion level: 15
k: 2
now at deletion level: 14
k: 2
now at deletion level: 13
k: 2
now at deletion level: 12
k: 2
now at deletion level: 11
k: 3
now at deletion level: 10
k: 3
now at deletion level: 9
k: 4
now at deletion level: 8
k: 4
now at deletion level: 7
k: 5
now at deletion level: 6
k: 6
now at deletion level: 5
k: 8
now at deletion level: 4
k: 10
now at deletion level: 3
k: 16
TEST Compiler [['inline']]
pass test!
now at deletion level: 2
['//mlir-opt --inline a.mlir', 'module {', '  llvm.func @malloc(i64) -> !llvm.ptr', '  llvm.func @func2() -> vector<4xf16> {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index', '    %44 = llvm.mlir.constant(0 : index) : i64', '    %65 = builtin.unrealized_conversion_cast %44 : i64 to index', '    cf.br ^bb173(%1 : index)', '  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177', '    cf.br ^bb175(%1 : index)', '  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176', '    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32', '    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32', '    cf.br ^bb175(%65 : index)', '  }', '  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %cst1_i32 = spirv.Constant 1 : i32', '    %cst-1_i32 = spirv.Constant -1 : i32', '    %0 = spirv.IEqual %arg1, %cst0_i32 : i32', '    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2', '  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10', '    spirv.ReturnValue %1 : i32', '  ^bb2:  // pred: ^bb0', '    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32', '    %8 = spirv.INotEqual %7, %cst0_i32 : i32', '    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)', '  }', '}']
k: 1
now at deletion level: 29
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
now at deletion level: 22
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
k: 2
now at deletion level: 15
k: 2
now at deletion level: 14
k: 2
now at deletion level: 13
k: 2
now at deletion level: 12
k: 2
now at deletion level: 11
k: 3
now at deletion level: 10
k: 3
now at deletion level: 9
k: 3
now at deletion level: 8
k: 4
now at deletion level: 7
k: 5
now at deletion level: 6
k: 6
now at deletion level: 5
k: 7
now at deletion level: 4
k: 10
now at deletion level: 3
k: 15
now at deletion level: 2
k: 30
now at deletion level: 1
['module {', '  llvm.func @malloc(i64) -> !llvm.ptr', '  llvm.func @func2() -> vector<4xf16> {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index', '    %44 = llvm.mlir.constant(0 : index) : i64', '    %65 = builtin.unrealized_conversion_cast %44 : i64 to index', '    cf.br ^bb173(%1 : index)', '  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177', '    cf.br ^bb175(%1 : index)', '  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176', '    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32', '    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32', '    cf.br ^bb175(%65 : index)', '  }', '  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %cst1_i32 = spirv.Constant 1 : i32', '    %cst-1_i32 = spirv.Constant -1 : i32', '    %0 = spirv.IEqual %arg1, %cst0_i32 : i32', '    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2', '  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10', '    spirv.ReturnValue %1 : i32', '  ^bb2:  // pred: ^bb0', '    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32', '    %8 = spirv.INotEqual %7, %cst0_i32 : i32', '    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)', '  }', '}']
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
now at deletion level: 22
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
k: 2
now at deletion level: 14
k: 2
now at deletion level: 13
k: 2
now at deletion level: 12
k: 2
now at deletion level: 11
k: 2
now at deletion level: 10
k: 3
now at deletion level: 9
k: 3
now at deletion level: 8
k: 4
now at deletion level: 7
k: 4
now at deletion level: 6
k: 5
now at deletion level: 5
k: 7
now at deletion level: 4
k: 9
now at deletion level: 3
k: 14
now at deletion level: 2
k: 29
TEST Compiler [['inline']]
pass test!
now at deletion level: 1
['module {', '  llvm.func @func2() -> vector<4xf16> {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index', '    %44 = llvm.mlir.constant(0 : index) : i64', '    %65 = builtin.unrealized_conversion_cast %44 : i64 to index', '    cf.br ^bb173(%1 : index)', '  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177', '    cf.br ^bb175(%1 : index)', '  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176', '    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32', '    %1189 = spirv.FunctionCall @__mlir_math_ipowi_i32(%1177, %1177) : (i32, i32) -> i32', '    cf.br ^bb175(%65 : index)', '  }', '  spirv.func @__mlir_math_ipowi_i32(%arg0: i32, %arg1: i32) -> i32 "None" attributes {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} {', '    %cst0_i32 = spirv.Constant 0 : i32', '    %cst1_i32 = spirv.Constant 1 : i32', '    %cst-1_i32 = spirv.Constant -1 : i32', '    %0 = spirv.IEqual %arg1, %cst0_i32 : i32', '    cf.cond_br %0, ^bb1(%cst1_i32 : i32), ^bb2', '  ^bb1(%1: i32):  // 6 preds: ^bb0, ^bb5, ^bb6, ^bb7, ^bb7, ^bb10', '    spirv.ReturnValue %1 : i32', '  ^bb2:  // pred: ^bb0', '    %7 = spirv.BitwiseAnd %arg1, %cst1_i32 : i32', '    %8 = spirv.INotEqual %7, %cst0_i32 : i32', '    cf.cond_br %8, ^bb1(%cst-1_i32 : i32), ^bb1(%cst1_i32 : i32)', '  }', '}']
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
now at deletion level: 22
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
k: 2
now at deletion level: 14
k: 2
now at deletion level: 13
k: 2
now at deletion level: 12
k: 2
now at deletion level: 11
k: 2
now at deletion level: 10
k: 3
now at deletion level: 9
k: 3
now at deletion level: 8
k: 4
now at deletion level: 7
k: 4
now at deletion level: 6
k: 5
now at deletion level: 5
k: 7
now at deletion level: 4
k: 9
now at deletion level: 3
k: 14
now at deletion level: 2
k: 28
now at deletion level: 1
Minimized IR code:
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
compiler fault chain:
[['inline']]
