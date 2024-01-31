//mlir-opt --buffer-deallocation a.mlir
llvm.func @malloc(i64) -> !llvm.ptr
func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
  %6 = llvm.mlir.constant(24583 : i16) : i16
  %7 = llvm.mlir.constant(24583 : i16) : i16
  %8 = llvm.mlir.constant(24583 : i16) : i16
  %9 = llvm.mlir.constant(24583 : i16) : i16
  %16 = llvm.mlir.constant(24583 : i16) : i16
  %17 = llvm.mlir.constant(24583 : i16) : i16
  %18 = llvm.mlir.constant(24583 : i16) : i16
  %19 = llvm.mlir.constant(24583 : i16) : i16
  %26 = llvm.mlir.constant(24583 : i16) : i16
  %27 = llvm.mlir.constant(24583 : i16) : i16
  %28 = llvm.mlir.constant(24583 : i16) : i16
  %29 = llvm.mlir.constant(24583 : i16) : i16
  %31 = llvm.mlir.constant(0 : index) : i64
  %32 = builtin.unrealized_conversion_cast %31 : i64 to index
  %33 = llvm.mlir.constant(1 : index) : i64
  %34 = builtin.unrealized_conversion_cast %33 : i64 to index
  %40 = llvm.mlir.constant(5 : index) : i64
  %41 = builtin.unrealized_conversion_cast %40 : i64 to index
  %52 = llvm.mlir.constant(19 : index) : i64
  %53 = builtin.unrealized_conversion_cast %52 : i64 to index
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
  %86 = llvm.mlir.constant(24583 : i16) : i16
  %87 = llvm.mlir.constant(24583 : i16) : i16
  %88 = llvm.mlir.constant(24583 : i16) : i16
  %89 = llvm.mlir.constant(24583 : i16) : i16
  %96 = llvm.mlir.constant(24583 : i16) : i16
  %97 = llvm.mlir.constant(24583 : i16) : i16
  %98 = llvm.mlir.constant(24583 : i16) : i16
  %99 = llvm.mlir.constant(24583 : i16) : i16
  %105 = llvm.mlir.constant(24583 : i16) : i16
  %106 = llvm.mlir.constant(24583 : i16) : i16
  %107 = llvm.mlir.constant(24583 : i16) : i16
  %108 = llvm.mlir.constant(24583 : i16) : i16
  %109 = llvm.mlir.constant(24583 : i16) : i16
  %101 = llvm.mlir.constant(24583 : i16) : i16
  %102 = llvm.mlir.constant(24583 : i16) : i16
  %103 = llvm.mlir.constant(24583 : i16) : i16
  %104 = llvm.mlir.constant(24583 : i16) : i16
  %115 = llvm.mlir.constant(24583 : i16) : i16
  %116 = llvm.mlir.constant(24583 : i16) : i16
  %117 = llvm.mlir.constant(24583 : i16) : i16
  %118 = llvm.mlir.constant(24583 : i16) : i16
  %119 = llvm.mlir.constant(24583 : i16) : i16
  %111 = llvm.mlir.constant(24583 : i16) : i16
  %112 = llvm.mlir.constant(24583 : i16) : i16
  %113 = llvm.mlir.constant(24583 : i16) : i16
  %114 = llvm.mlir.constant(24583 : i16) : i16
  %125 = llvm.mlir.constant(24583 : i16) : i16
  %126 = llvm.mlir.constant(24583 : i16) : i16
  %127 = llvm.mlir.constant(24583 : i16) : i16
  %128 = llvm.mlir.constant(24583 : i16) : i16
  %129 = llvm.mlir.constant(24583 : i16) : i16
  %121 = llvm.mlir.constant(24583 : i16) : i16
  %122 = llvm.mlir.constant(24583 : i16) : i16
  %123 = llvm.mlir.constant(24583 : i16) : i16
  %124 = llvm.mlir.constant(24583 : i16) : i16
  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %197 = llvm.icmp "eq" %190, %31 : i64
  llvm.cond_br %197, ^bb3, ^bb13
^bb3:  // pred: ^bb2
  %200 = llvm.icmp "eq" %196, %33 : i64
  llvm.cond_br %200, ^bb6, ^bb16
^bb6:  // pred: ^bb5
  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>
  %alloc_1 = memref.alloc(%53, %32) {alignment = 64 : i64} : memref<?x?x15xi16>
  linalg.map outs(%alloc_1 : memref<?x?x15xi16>)
    () {
      linalg.yield %6 : i16
    }
  llvm.unreachable
^bb13:  // pred: ^bb2
  llvm.unreachable
^bb16:  // pred: ^bb5
  llvm.unreachable
}