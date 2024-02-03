dependency: {}
passed compiler: [['sroa']]
initial error: mlir-opt: /home/jiyuan/circt/llvm/mlir/lib/Dialect/LLVMIR/IR/LLVMMemorySlot.cpp:349: bool mlir::LLVM::GEPOp::canRewire(const mlir::DestructurableMemorySlot&, llvm::SmallPtrSetImpl<mlir::Attribute>&, llvm::SmallVectorImpl<mlir::MemorySlot>&): Assertion `slot.elementPtrs.contains(firstLevelIndex)' failed.
valid and unique compilation path: 1
valid and unique compilation path: [['sroa']]
Execution time: 18.35636830329895 seconds
initial flag: (True, "mlir-opt: /home/jiyuan/circt/llvm/mlir/lib/Dialect/LLVMIR/IR/LLVMMemorySlot.cpp:349: bool mlir::LLVM::GEPOp::canRewire(const mlir::DestructurableMemorySlot&, llvm::SmallPtrSetImpl<mlir::Attribute>&, llvm::SmallVectorImpl<mlir::MemorySlot>&): Assertion `slot.elementPtrs.contains(firstLevelIndex)' failed.")
k: 1
now at deletion level: 52
k: 1
now at deletion level: 51
k: 1
now at deletion level: 50
k: 1
now at deletion level: 49
k: 1
now at deletion level: 48
k: 1
now at deletion level: 47
k: 1
now at deletion level: 46
k: 1
now at deletion level: 45
k: 1
now at deletion level: 44
k: 1
now at deletion level: 43
k: 1
now at deletion level: 42
k: 1
now at deletion level: 41
k: 1
now at deletion level: 40
k: 1
now at deletion level: 39
k: 1
now at deletion level: 38
k: 1
now at deletion level: 37
k: 1
now at deletion level: 36
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
k: 2
now at deletion level: 26
k: 2
now at deletion level: 25
k: 2
now at deletion level: 24
k: 2
now at deletion level: 23
k: 2
now at deletion level: 22
k: 2
now at deletion level: 21
['//mlir-opt --sroa a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'llvm.func @func1() attributes {sym_visibility = "nested"} {', '  %0 = llvm.mlir.constant(64 : index) : i64', '  %7 = llvm.mlir.constant(24583 : i16) : i16', '  %8 = llvm.mlir.constant(24583 : i16) : i16', '  %9 = llvm.mlir.constant(24583 : i16) : i16', '  %17 = llvm.mlir.constant(24583 : i16) : i16', '  %18 = llvm.mlir.constant(24583 : i16) : i16', '  %19 = llvm.mlir.constant(24583 : i16) : i16', '  %26 = llvm.mlir.constant(24583 : i16) : i16', '  %27 = llvm.mlir.constant(24583 : i16) : i16', '  %28 = llvm.mlir.constant(24583 : i16) : i16', '  %29 = llvm.mlir.constant(24583 : i16) : i16', '  %16 = llvm.mlir.constant(1 : index) : i64', '  %20 = llvm.mlir.constant(0x4E4156AC : f32) : f32', '  %34 = llvm.mlir.constant(-1 : index) : i64', '  %generated = tensor.generate  {', '  ^bb0(%arg0: index, %arg1: index):', '    %239 = llvm.alloca %16 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr', '    %240 = llvm.getelementptr %239[0, 19] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>', '    %241 = llvm.load %240 : !llvm.ptr -> i64', '    %242 = llvm.mul %241, %34  : i64', '    %243 = llvm.mlir.zero : !llvm.ptr', '    %244 = llvm.getelementptr %243[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32', '    %245 = llvm.ptrtoint %244 : !llvm.ptr to i64', '    %246 = llvm.add %245, %0  : i64', '    %247 = llvm.call @malloc(%246) : (i64) -> !llvm.ptr', '    tensor.yield %20 : f32', '  } : tensor<4x30xf32>', '  llvm.return', '}']
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
TEST Compiler [['sroa']]
pass test!
now at deletion level: 10
['//mlir-opt --sroa a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'llvm.func @func1() attributes {sym_visibility = "nested"} {', '  %0 = llvm.mlir.constant(64 : index) : i64', '  %16 = llvm.mlir.constant(1 : index) : i64', '  %20 = llvm.mlir.constant(0x4E4156AC : f32) : f32', '  %34 = llvm.mlir.constant(-1 : index) : i64', '  %generated = tensor.generate  {', '  ^bb0(%arg0: index, %arg1: index):', '    %239 = llvm.alloca %16 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr', '    %240 = llvm.getelementptr %239[0, 19] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>', '    %241 = llvm.load %240 : !llvm.ptr -> i64', '    %242 = llvm.mul %241, %34  : i64', '    %243 = llvm.mlir.zero : !llvm.ptr', '    %244 = llvm.getelementptr %243[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32', '    %245 = llvm.ptrtoint %244 : !llvm.ptr to i64', '    %246 = llvm.add %245, %0  : i64', '    %247 = llvm.call @malloc(%246) : (i64) -> !llvm.ptr', '    tensor.yield %20 : f32', '  } : tensor<4x30xf32>', '  llvm.return', '}']
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
k: 1
now at deletion level: 14
k: 1
now at deletion level: 13
k: 1
now at deletion level: 12
k: 2
now at deletion level: 11
k: 2
now at deletion level: 10
k: 2
now at deletion level: 9
k: 2
now at deletion level: 8
k: 3
now at deletion level: 7
k: 3
now at deletion level: 6
k: 4
now at deletion level: 5
k: 5
now at deletion level: 4
k: 7
now at deletion level: 3
k: 11
now at deletion level: 2
k: 22
TEST Compiler [['sroa']]
pass test!
now at deletion level: 1
['llvm.func @malloc(i64) -> !llvm.ptr', 'llvm.func @func1() attributes {sym_visibility = "nested"} {', '  %0 = llvm.mlir.constant(64 : index) : i64', '  %16 = llvm.mlir.constant(1 : index) : i64', '  %20 = llvm.mlir.constant(0x4E4156AC : f32) : f32', '  %34 = llvm.mlir.constant(-1 : index) : i64', '  %generated = tensor.generate  {', '  ^bb0(%arg0: index, %arg1: index):', '    %239 = llvm.alloca %16 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr', '    %240 = llvm.getelementptr %239[0, 19] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>', '    %241 = llvm.load %240 : !llvm.ptr -> i64', '    %242 = llvm.mul %241, %34  : i64', '    %243 = llvm.mlir.zero : !llvm.ptr', '    %244 = llvm.getelementptr %243[%242] : (!llvm.ptr, i64) -> !llvm.ptr, f32', '    %245 = llvm.ptrtoint %244 : !llvm.ptr to i64', '    %246 = llvm.add %245, %0  : i64', '    %247 = llvm.call @malloc(%246) : (i64) -> !llvm.ptr', '    tensor.yield %20 : f32', '  } : tensor<4x30xf32>', '  llvm.return', '}']
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
k: 1
now at deletion level: 14
k: 1
now at deletion level: 13
k: 1
now at deletion level: 12
k: 1
now at deletion level: 11
k: 2
now at deletion level: 10
k: 2
now at deletion level: 9
k: 2
now at deletion level: 8
k: 3
now at deletion level: 7
k: 3
now at deletion level: 6
k: 4
now at deletion level: 5
k: 5
now at deletion level: 4
k: 7
now at deletion level: 3
k: 10
now at deletion level: 2
k: 21
now at deletion level: 1
Minimized IR code:
llvm.func @malloc(i64) -> !llvm.ptr
llvm.func @func1() attributes {sym_visibility = "nested"} {
  %0 = llvm.mlir.constant(64 : index) : i64
  %16 = llvm.mlir.constant(1 : index) : i64
  %20 = llvm.mlir.constant(0x4E4156AC : f32) : f32
  %34 = llvm.mlir.constant(-1 : index) : i64
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
compiler fault chain:
[['sroa']]
