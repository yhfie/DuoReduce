//mlir-opt --sroa a.mlir
llvm.func @malloc(i64) -> !llvm.ptr
llvm.func @func1() attributes {sym_visibility = "nested"} {
  %0 = llvm.mlir.constant(64 : index) : i64
  %7 = llvm.mlir.constant(24583 : i16) : i16
  %8 = llvm.mlir.constant(24583 : i16) : i16
  %9 = llvm.mlir.constant(24583 : i16) : i16
  %17 = llvm.mlir.constant(24583 : i16) : i16
  %18 = llvm.mlir.constant(24583 : i16) : i16
  %19 = llvm.mlir.constant(24583 : i16) : i16
  %26 = llvm.mlir.constant(24583 : i16) : i16
  %27 = llvm.mlir.constant(24583 : i16) : i16
  %28 = llvm.mlir.constant(24583 : i16) : i16
  %29 = llvm.mlir.constant(24583 : i16) : i16
  %16 = llvm.mlir.constant(1 : index) : i64
  %20 = llvm.mlir.constant(0x4E4156AC : f32) : f32
  %34 = llvm.mlir.constant(-1 : index) : i64
  %58 = llvm.mlir.constant(31 : index) : i64
  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>
  %59 = llvm.mlir.constant(15 : index) : i64
  %60 = llvm.mlir.constant(1 : index) : i64
  %61 = llvm.mul %59, %58  : i64
  %62 = llvm.mul %61, %58  : i64
  %63 = llvm.mlir.zero : !llvm.ptr
  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1
  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr
  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %70 = llvm.mlir.constant(0 : index) : i64
  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %generated = tensor.generate  {
  ^bb0(%arg0: index, %arg1: index):
    %239 = llvm.alloca %16 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    %240 = llvm.getelementptr %239[0, 19] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %241 = llvm.load %240 : !llvm.ptr -> i64
    %242 = llvm.mul %241, %34  : i64
    %243 = llvm.mlir.zero : !llvm.ptr
    %244 = llvm.getelementptr %243[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %245 = llvm.ptrtoint %244 : !llvm.ptr to i64
    %246 = llvm.add %245, %0  : i64
    %247 = llvm.call @malloc(%246) : (i64) -> !llvm.ptr
    tensor.yield %20 : f32
  } : tensor<4x30xf32>
  llvm.return
}
