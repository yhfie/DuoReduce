//mlir-opt --inline a.mlir
module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @func2() -> vector<4xf16> {
    %cst0_i32 = spirv.Constant 0 : i32
    %1 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %3 = llvm.mlir.constant(64 : index) : i64
    %41 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.mlir.constant(32 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %65 = builtin.unrealized_conversion_cast %44 : i64 to index
    %67 = builtin.unrealized_conversion_cast %41 : i64 to index
    %69 = builtin.unrealized_conversion_cast %56 : i64 to index
    %75 = builtin.unrealized_conversion_cast %54 : i64 to index
    %83 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.sub %3, %56  : i64
    %105 = llvm.mlir.constant(24583 : i16) : i16
    %106 = llvm.sub %3, %56  : i64
    %107 = llvm.mlir.zero : !llvm.ptr
    %108 = builtin.unrealized_conversion_cast %54 : i64 to index
    %109 = builtin.unrealized_conversion_cast %44 : i64 to index
    %101 = builtin.unrealized_conversion_cast %56 : i64 to index
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = builtin.unrealized_conversion_cast %41 : i64 to index
    %104 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %115 = llvm.mlir.constant(24583 : i16) : i16
    %116 = llvm.sub %3, %56  : i64
    %117 = llvm.mlir.zero : !llvm.ptr
    %118 = builtin.unrealized_conversion_cast %54 : i64 to index
    %119 = builtin.unrealized_conversion_cast %44 : i64 to index
    %111 = builtin.unrealized_conversion_cast %56 : i64 to index
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = builtin.unrealized_conversion_cast %41 : i64 to index
    %114 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %125 = llvm.mlir.constant(24583 : i16) : i16
    %126 = llvm.sub %3, %56  : i64
    %127 = llvm.mlir.zero : !llvm.ptr
    %128 = builtin.unrealized_conversion_cast %54 : i64 to index
    %129 = builtin.unrealized_conversion_cast %44 : i64 to index
    %121 = builtin.unrealized_conversion_cast %56 : i64 to index
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = builtin.unrealized_conversion_cast %41 : i64 to index
    %124 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %135 = llvm.mlir.constant(24583 : i16) : i16
    %136 = llvm.sub %3, %56  : i64
    %137 = llvm.mlir.zero : !llvm.ptr
    %138 = builtin.unrealized_conversion_cast %54 : i64 to index
    %139 = builtin.unrealized_conversion_cast %44 : i64 to index
    %131 = builtin.unrealized_conversion_cast %56 : i64 to index
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = builtin.unrealized_conversion_cast %41 : i64 to index
    %134 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %144 = llvm.getelementptr %83[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %145 = llvm.ptrtoint %144 : !llvm.ptr to i64
    %146 = llvm.add %145, %3  : i64
    %147 = llvm.call @malloc(%146) : (i64) -> !llvm.ptr
    %148 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %149 = llvm.add %148, %89  : i64
    %140 = llvm.urem %149, %3  : i64
    %141 = llvm.sub %149, %140  : i64
    %142 = llvm.inttoptr %141 : i64 to !llvm.ptr
    %184 = llvm.getelementptr %83[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %185 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %186 = llvm.add %185, %3  : i64
    %187 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr
    %188 = llvm.ptrtoint %187 : !llvm.ptr to i64
    %189 = llvm.add %188, %89  : i64
    %190 = llvm.urem %189, %3  : i64
    %191 = llvm.sub %189, %190  : i64
    %192 = llvm.inttoptr %191 : i64 to !llvm.ptr
    %205 = llvm.mlir.constant(24583 : i16) : i16
    %206 = llvm.sub %3, %56  : i64
    %207 = llvm.mlir.zero : !llvm.ptr
    %208 = builtin.unrealized_conversion_cast %54 : i64 to index
    %209 = builtin.unrealized_conversion_cast %44 : i64 to index
    %201 = builtin.unrealized_conversion_cast %56 : i64 to index
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = builtin.unrealized_conversion_cast %41 : i64 to index
    %204 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %215 = llvm.mlir.constant(24583 : i16) : i16
    %216 = llvm.sub %3, %56  : i64
    %217 = llvm.mlir.zero : !llvm.ptr
    %218 = builtin.unrealized_conversion_cast %54 : i64 to index
    %219 = builtin.unrealized_conversion_cast %44 : i64 to index
    %211 = builtin.unrealized_conversion_cast %56 : i64 to index
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = builtin.unrealized_conversion_cast %41 : i64 to index
    %214 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %225 = llvm.mlir.constant(24583 : i16) : i16
    %226 = llvm.sub %3, %56  : i64
    %227 = llvm.mlir.zero : !llvm.ptr
    %228 = builtin.unrealized_conversion_cast %54 : i64 to index
    %229 = builtin.unrealized_conversion_cast %44 : i64 to index
    %221 = builtin.unrealized_conversion_cast %56 : i64 to index
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = builtin.unrealized_conversion_cast %41 : i64 to index
    %224 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %235 = llvm.mlir.constant(24583 : i16) : i16
    %236 = llvm.sub %3, %56  : i64
    %237 = llvm.mlir.zero : !llvm.ptr
    %238 = builtin.unrealized_conversion_cast %54 : i64 to index
    %239 = builtin.unrealized_conversion_cast %44 : i64 to index
    %231 = builtin.unrealized_conversion_cast %56 : i64 to index
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = builtin.unrealized_conversion_cast %41 : i64 to index
    %234 = builtin.unrealized_conversion_cast %cst0_i32 : i32 to index
    %244 = llvm.getelementptr %83[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %245 = llvm.ptrtoint %144 : !llvm.ptr to i64
    %246 = llvm.add %145, %3  : i64
    %247 = llvm.call @malloc(%146) : (i64) -> !llvm.ptr
    %248 = llvm.ptrtoint %147 : !llvm.ptr to i64
    %249 = llvm.add %148, %89  : i64
    %240 = llvm.urem %149, %3  : i64
    %241 = llvm.sub %149, %140  : i64
    %242 = llvm.inttoptr %141 : i64 to !llvm.ptr
    %284 = llvm.getelementptr %83[1024] : (!llvm.ptr) -> !llvm.ptr, i32
    %285 = llvm.ptrtoint %184 : !llvm.ptr to i64
    %286 = llvm.add %185, %3  : i64
    %287 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr
    %288 = llvm.ptrtoint %187 : !llvm.ptr to i64
    %289 = llvm.add %188, %89  : i64
    %290 = llvm.urem %189, %3  : i64
    %291 = llvm.sub %189, %190  : i64
    %292 = llvm.inttoptr %191 : i64 to !llvm.ptr
    cf.br ^bb1(%65 : index)
  ^bb1(%309: index):  // 2 preds: ^bb0, ^bb5
    %310 = arith.cmpi slt, %309, %67 : index
    cf.cond_br %310, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %328 = arith.addi %309, %69 : index
    cf.br ^bb1(%328 : index)
  ^bb6:  // pred: ^bb1
    %402 = llvm.alloca %56 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    %403 = llvm.getelementptr %402[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %404 = llvm.load %403 : !llvm.ptr -> i64
    %405 = builtin.unrealized_conversion_cast %404 : i64 to index
    cf.br ^bb19(%65 : index)
  ^bb19(%407: index):  // 2 preds: ^bb18, ^bb29
    %408 = arith.cmpi slt, %407, %405 : index
    cf.cond_br %408, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    cf.br ^bb21(%65 : index)
  ^bb21(%409: index):  // 2 preds: ^bb20, ^bb28
    %444 = arith.addi %409, %69 : index
    cf.br ^bb21(%444 : index)
  ^bb30:  // pred: ^bb19
    cf.br ^bb31(%65 : index)
  ^bb31(%486: index):  // 2 preds: ^bb30, ^bb53
    %487 = arith.cmpi slt, %486, %69 : index
    cf.cond_br %487, ^bb32, ^bb54
  ^bb32:  // pred: ^bb31
    cf.br ^bb33(%65 : index)
  ^bb33(%488: index):  // 2 preds: ^bb32, ^bb52
    %643 = arith.addi %488, %69 : index
    cf.br ^bb33(%643 : index)
  ^bb54:  // pred: ^bb31
    cf.br ^bb67(%65 : index)
  ^bb67(%695: index):  // 2 preds: ^bb66, ^bb77
    %696 = arith.cmpi slt, %695, %69 : index
    cf.cond_br %696, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %732 = arith.addi %695, %69 : index
    cf.br ^bb67(%732 : index)
  ^bb78:  // pred: ^bb67
    %749 = builtin.unrealized_conversion_cast %56 : i64 to index
    cf.br ^bb79(%65 : index)
  ^bb79(%756: index):  // 2 preds: ^bb78, ^bb89
    %757 = arith.cmpi slt, %756, %749 : index
    cf.cond_br %757, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %794 = arith.addi %756, %69 : index
    cf.br ^bb79(%794 : index)
  ^bb90:  // pred: ^bb79
    cf.br ^bb121(%65 : index)
  ^bb121(%924: index):  // 2 preds: ^bb120, ^bb131
    %925 = arith.cmpi slt, %924, %69 : index
    cf.cond_br %925, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    cf.br ^bb127(%1 : index)
  ^bb127(%942: index):  // 2 preds: ^bb126, ^bb128
    %958 = arith.addi %942, %69 : index
    cf.br ^bb127(%958 : index)
  ^bb132:  // pred: ^bb121
    cf.br ^bb133(%65 : index)
  ^bb133(%981: index):  // 2 preds: ^bb132, ^bb143
    %982 = arith.cmpi slt, %981, %75 : index
    cf.cond_br %982, ^bb134, ^bb144
  ^bb134:  // pred: ^bb133
    cf.br ^bb139(%1 : index)
  ^bb139(%999: index):  // 2 preds: ^bb138, ^bb140
    %1015 = arith.addi %999, %69 : index
    cf.br ^bb139(%1015 : index)
  ^bb144:  // pred: ^bb133
    cf.br ^bb169(%65 : index)
  ^bb169(%1157: index):  // 2 preds: ^bb168, ^bb179
    cf.br ^bb171(%65 : index)
  ^bb171(%1159: index):  // 2 preds: ^bb170, ^bb178
    cf.br ^bb173(%1 : index)
  ^bb173(%1173: index):  // 2 preds: ^bb172, ^bb177
    cf.br ^bb175(%1 : index)
  ^bb175(%1175: index):  // 2 preds: ^bb174, ^bb176
    %1177 = builtin.unrealized_conversion_cast %1173 : index to i32

    // Function call of __mlir_math_ipowi_i32
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
