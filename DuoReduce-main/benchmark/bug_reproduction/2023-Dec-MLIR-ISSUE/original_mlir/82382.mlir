mlir-opt --convert-linalg-to-affine-loops \
   --affine-loop-tile="tile-sizes=4,28,28,16,7,7,3" \
   --affine-loop-unroll="unroll-factor=4" \
   --canonicalize \
   --affine-parallelize \
   --lower-affine \
   --canonicalize \
   --gpu-map-parallel-loops \
   --convert-parallel-loops-to-gpu \
   conv2d.mlir
func.func @main() {

	%in_buf = memref.alloc() : memref<16x230x230x3xf32>
	%filter_buf = memref.alloc() : memref<64x7x7x3xf32>
	%out_buf = memref.alloc() : memref<16x112x112x64xf32>

	linalg.conv_2d_nhwc_fhwc {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>}
		ins (%in_buf, %filter_buf: memref<16x230x230x3xf32>, memref<64x7x7x3xf32>)
		outs (%out_buf: memref<16x112x112x64xf32>)


	return
}


PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.
Stack dump:
0.	Program arguments: mlir-opt --convert-linalg-to-affine-loops --affine-loop-tile=tile-sizes=4,28,28,16,7,7,3 --affine-loop-unroll=unroll-factor=4 --canonicalize --affine-parallelize --lower-affine --canonicalize --gpu-map-parallel-loops --convert-parallel-loops-to-gpu conv2d.mlir
 #0 0x00005c544a6cdee6 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) /home/j/llvm-project/llvm/lib/Support/Unix/Signals.inc:723:13
 #1 0x00005c544a6cbe40 llvm::sys::RunSignalHandlers() /home/j/llvm-project/llvm/lib/Support/Signals.cpp:106:18
 #2 0x00005c544a6ce88b SignalHandler(int) /home/j/llvm-project/llvm/lib/Support/Unix/Signals.inc:413:1
 #3 0x000073b19aa5a770 (/usr/lib/libc.so.6+0x3c770)
 #4 0x00005c544d35cf45 void mlir::detail::IROperandBase::insertInto<mlir::IRObjectWithUseList<mlir::OpOperand>>(mlir::IRObjectWithUseList<mlir::OpOperand>*) /home/j/llvm-project/mlir/include/mlir/IR/UseDefLists.h:99:24
 #5 0x00005c544d35cf45 mlir::IROperand<mlir::OpOperand, mlir::Value>::insertIntoCurrent() /home/j/llvm-project/mlir/include/mlir/IR/UseDefLists.h:186:30
 #6 0x00005c544d35cf45 mlir::IROperand<mlir::OpOperand, mlir::Value>::IROperand(mlir::Operation*, mlir::Value) /home/j/llvm-project/mlir/include/mlir/IR/UseDefLists.h:132:5
 #7 0x00005c544d35cf45 mlir::OpOperand::OpOperand(mlir::Operation*, mlir::Value) /home/j/llvm-project/mlir/include/mlir/IR/Value.h:280:38
 #8 0x00005c544d35cf45 mlir::detail::OperandStorage::OperandStorage(mlir::Operation*, mlir::OpOperand*, mlir::ValueRange) /home/j/llvm-project/mlir/lib/IR/OperationSupport.cpp:245:30
 #9 0x00005c544d351d33 mlir::Operation::create(mlir::Location, mlir::OperationName, mlir::TypeRange, mlir::ValueRange, mlir::DictionaryAttr, mlir::OpaqueProperties, mlir::BlockRange, unsigned int) /home/j/llvm-project/mlir/lib/IR/Operation.cpp:122:3
#10 0x00005c544d351565 mlir::Operation::create(mlir::Location, mlir::OperationName, mlir::TypeRange, mlir::ValueRange, mlir::NamedAttrList&&, mlir::OpaqueProperties, mlir::BlockRange, unsigned int) /home/j/llvm-project/mlir/lib/IR/Operation.cpp:75:10
#11 0x00005c544d351565 mlir::Operation::create(mlir::Location, mlir::OperationName, mlir::TypeRange, mlir::ValueRange, mlir::NamedAttrList&&, mlir::OpaqueProperties, mlir::BlockRange, mlir::RegionRange) /home/j/llvm-project/mlir/lib/IR/Operation.cpp:58:7
#12 0x00005c544d351407 mlir::Operation::create(mlir::OperationState const&) /home/j/llvm-project/mlir/lib/IR/Operation.cpp:36:7
#13 0x00005c544d2a6db0 mlir::OpBuilder::create(mlir::OperationState const&) /home/j/llvm-project/mlir/lib/IR/Builders.cpp:447:17
#14 0x00005c544cb5558b llvm::ValueIsPresent<mlir::Operation*, void>::isPresent(mlir::Operation* const&) /home/j/llvm-project/llvm/include/llvm/Support/Casting.h:622:55
#15 0x00005c544cb5558b bool llvm::detail::isPresent<mlir::Operation*>(mlir::Operation* const&) /home/j/llvm-project/llvm/include/llvm/Support/Casting.h:630:10
#16 0x00005c544cb5558b decltype(auto) llvm::dyn_cast<mlir::affine::AffineApplyOp, mlir::Operation>(mlir::Operation*) /home/j/llvm-project/llvm/include/llvm/Support/Casting.h:662:3
#17 0x00005c544cb5558b mlir::affine::AffineApplyOp mlir::OpBuilder::create<mlir::affine::AffineApplyOp, mlir::AffineMap, mlir::ValueRange>(mlir::Location, mlir::AffineMap&&, mlir::ValueRange&&) /home/j/llvm-project/mlir/include/mlir/IR/Builders.h:496:19
#18 0x00005c544cb547a3 mlir::Operation::getOpResultImpl(unsigned int) /home/j/llvm-project/mlir/include/mlir/IR/Operation.h:1000:5
#19 0x00005c544cb547a3 mlir::Operation::getResult(unsigned int) /home/j/llvm-project/mlir/include/mlir/IR/Operation.h:402:54
#20 0x00005c544cb547a3 mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>::getResult() /home/j/llvm-project/mlir/include/mlir/IR/OpDefinition.h:697:33
#21 0x00005c544cb547a3 mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>::operator mlir::detail::TypedValue<mlir::IndexType>() /home/j/llvm-project/mlir/include/mlir/IR/OpDefinition.h:702:54
#22 0x00005c544cb547a3 processParallelLoop(mlir::scf::ParallelOp, mlir::gpu::LaunchOp, mlir::IRMapping&, llvm::SmallVectorImpl<mlir::Operation*>&, llvm::DenseMap<mlir::gpu::Processor, mlir::Value, llvm::DenseMapInfo<mlir::gpu::Processor, void>, llvm::detail::DenseMapPair<mlir::gpu::Processor, mlir::Value>>&, mlir::PatternRewriter&) /home/j/llvm-project/mlir/lib/Conversion/SCFToGPU/SCFToGPU.cpp:457:18
#23 0x00005c544cb53b93 mlir::LogicalResult::failed() const /home/j/llvm-project/mlir/include/mlir/Support/LogicalResult.h:44:33
#24 0x00005c544cb53b93 mlir::failed(mlir::LogicalResult) /home/j/llvm-project/mlir/include/mlir/Support/LogicalResult.h:72:58
#25 0x00005c544cb53b93 (anonymous namespace)::ParallelToGpuLaunchLowering::matchAndRewrite(mlir::scf::ParallelOp, mlir::PatternRewriter&) const /home/j/llvm-project/mlir/lib/Conversion/SCFToGPU/SCFToGPU.cpp:642:11
#26 0x00005c544f524be1 mlir::PatternApplicator::matchAndRewrite(mlir::Operation*, mlir::PatternRewriter&, llvm::function_ref<bool (mlir::Pattern const&)>, llvm::function_ref<void (mlir::Pattern const&)>, llvm::function_ref<mlir::LogicalResult (mlir::Pattern const&)>)::$_0::operator()() const /home/j/llvm-project/mlir/lib/Rewrite/PatternApplicator.cpp:208:13
#27 0x00005c544f524be1 void llvm::function_ref<void ()>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation*, mlir::PatternRewriter&, llvm::function_ref<bool (mlir::Pattern const&)>, llvm::function_ref<void (mlir::Pattern const&)>, llvm::function_ref<mlir::LogicalResult (mlir::Pattern const&)>)::$_0>(long) /home/j/llvm-project/llvm/include/llvm/ADT/STLFunctionalExtras.h:45:12
#28 0x00005c544f521910 mlir::PatternApplicator::matchAndRewrite(mlir::Operation*, mlir::PatternRewriter&, llvm::function_ref<bool (mlir::Pattern const&)>, llvm::function_ref<void (mlir::Pattern const&)>, llvm::function_ref<mlir::LogicalResult (mlir::Pattern const&)>) /home/j/llvm-project/mlir/lib/Rewrite/PatternApplicator.cpp:229:9
#29 0x00005c544d23afdd (anonymous namespace)::OperationLegalizer::legalize(mlir::Operation*, mlir::ConversionPatternRewriter&) /home/j/llvm-project/mlir/lib/Transforms/Utils/DialectConversion.cpp:0:0
#30 0x00005c544d2318f9 (anonymous namespace)::OperationConverter::convert(mlir::ConversionPatternRewriter&, mlir::Operation*) /home/j/llvm-project/mlir/lib/Transforms/Utils/DialectConversion.cpp:0:0
#31 0x00005c544d2318f9 (anonymous namespace)::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation*>, llvm::function_ref<void (mlir::Diagnostic&)>) /home/j/llvm-project/mlir/lib/Transforms/Utils/DialectConversion.cpp:2433:16
#32 0x00005c544d2346d4 mlir::applyPartialConversion(llvm::ArrayRef<mlir::Operation*>, mlir::ConversionTarget const&, mlir::FrozenRewritePatternSet const&, llvm::DenseSet<mlir::Operation*, llvm::DenseMapInfo<mlir::Operation*, void>>*) /home/j/llvm-project/mlir/lib/Transforms/Utils/DialectConversion.cpp:3403:22
#33 0x00005c544d2346d4 mlir::applyPartialConversion(mlir::Operation*, mlir::ConversionTarget const&, mlir::FrozenRewritePatternSet const&, llvm::DenseSet<mlir::Operation*, llvm::DenseMapInfo<mlir::Operation*, void>>*) /home/j/llvm-project/mlir/lib/Transforms/Utils/DialectConversion.cpp:3409:10
#34 0x00005c544cb51f0a (anonymous namespace)::ParallelLoopToGpuPass::runOnOperation() /home/j/llvm-project/mlir/lib/Conversion/SCFToGPU/SCFToGPUPass.cpp:62:16
#35 0x00005c544d1d301f mlir::detail::OpToOpPassAdaptor::run(mlir::Pass*, mlir::Operation*, mlir::AnalysisManager, bool, unsigned int)::$_1::operator()() const /home/j/llvm-project/mlir/lib/Pass/Pass.cpp:0:17
#36 0x00005c544d1d301f void llvm::function_ref<void ()>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass*, mlir::Operation*, mlir::AnalysisManager, bool, unsigned int)::$_1>(long) /home/j/llvm-project/llvm/include/llvm/ADT/STLFunctionalExtras.h:45:12
#37 0x00005c544d1d301f llvm::function_ref<void ()>::operator()() const /home/j/llvm-project/llvm/include/llvm/ADT/STLFunctionalExtras.h:68:12
#38 0x00005c544d1d301f void mlir::MLIRContext::executeAction<mlir::PassExecutionAction, mlir::Pass&>(llvm::function_ref<void ()>, llvm::ArrayRef<mlir::IRUnit>, mlir::Pass&) /home/j/llvm-project/mlir/include/mlir/IR/MLIRContext.h:275:7
#39 0x00005c544d1d301f mlir::detail::OpToOpPassAdaptor::run(mlir::Pass*, mlir::Operation*, mlir::AnalysisManager, bool, unsigned int) /home/j/llvm-project/mlir/lib/Pass/Pass.cpp:513:21
#40 0x00005c544d1d5c15 mlir::LogicalResult::failed() const /home/j/llvm-project/mlir/include/mlir/Support/LogicalResult.h:44:33
#41 0x00005c544d1d5c15 mlir::failed(mlir::LogicalResult) /home/j/llvm-project/mlir/include/mlir/Support/LogicalResult.h:72:58
#42 0x00005c544d1d5c15 mlir::detail::OpToOpPassAdaptor::runPipeline(mlir::OpPassManager&, mlir::Operation*, mlir::AnalysisManager, bool, unsigned int, mlir::PassInstrumentor*, mlir::PassInstrumentation::PipelineParentInfo const*) /home/j/llvm-project/mlir/lib/Pass/Pass.cpp:585:9
#43 0x00005c544d1d5c15 mlir::PassManager::runPasses(mlir::Operation*, mlir::AnalysisManager) /home/j/llvm-project/mlir/lib/Pass/Pass.cpp:896:10
#44 0x00005c544d1d5c15 mlir::PassManager::run(mlir::Operation*) /home/j/llvm-project/mlir/lib/Pass/Pass.cpp:876:60
#45 0x00005c544d1c58e9 mlir::LogicalResult::failed() const /home/j/llvm-project/mlir/include/mlir/Support/LogicalResult.h:44:33
#46 0x00005c544d1c58e9 mlir::failed(mlir::LogicalResult) /home/j/llvm-project/mlir/include/mlir/Support/LogicalResult.h:72:58
#47 0x00005c544d1c58e9 performActions(llvm::raw_ostream&, std::shared_ptr<llvm::SourceMgr> const&, mlir::MLIRContext*, mlir::MlirOptMainConfig const&) /home/j/llvm-project/mlir/lib/Tools/mlir-opt/MlirOptMain.cpp:394:7
#48 0x00005c544d1c4a56 processBuffer(llvm::raw_ostream&, std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, mlir::MlirOptMainConfig const&, mlir::DialectRegistry&, llvm::ThreadPool*) /home/j/llvm-project/mlir/lib/Tools/mlir-opt/MlirOptMain.cpp:459:12
#49 0x00005c544d1c4a56 mlir::MlirOptMain(llvm::raw_ostream&, std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, mlir::DialectRegistry&, mlir::MlirOptMainConfig const&)::$_0::operator()(std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::raw_ostream&) const /home/j/llvm-project/mlir/lib/Tools/mlir-opt/MlirOptMain.cpp:530:12
#50 0x00005c544d1c4a56 mlir::LogicalResult llvm::function_ref<mlir::LogicalResult (std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::raw_ostream&)>::callback_fn<mlir::MlirOptMain(llvm::raw_ostream&, std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, mlir::DialectRegistry&, mlir::MlirOptMainConfig const&)::$_0>(long, std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::raw_ostream&) /home/j/llvm-project/llvm/include/llvm/ADT/STLFunctionalExtras.h:45:12
#51 0x00005c544d26efab llvm::function_ref<mlir::LogicalResult (std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::raw_ostream&)>::operator()(std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::raw_ostream&) const /home/j/llvm-project/llvm/include/llvm/ADT/STLFunctionalExtras.h:68:12
#52 0x00005c544d26efab mlir::splitAndProcessBuffer(std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::function_ref<mlir::LogicalResult (std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, llvm::raw_ostream&)>, llvm::raw_ostream&, bool, bool) /home/j/llvm-project/mlir/lib/Support/ToolUtilities.cpp:28:12
#53 0x00005c544d1c0d47 mlir::MlirOptMain(llvm::raw_ostream&, std::unique_ptr<llvm::MemoryBuffer, std::default_delete<llvm::MemoryBuffer>>, mlir::DialectRegistry&, mlir::MlirOptMainConfig const&) /home/j/llvm-project/mlir/lib/Tools/mlir-opt/MlirOptMain.cpp:533:10
#54 0x00005c544d1c0f12 mlir::MlirOptMain(int, char**, llvm::StringRef, llvm::StringRef, mlir::DialectRegistry&) /home/j/llvm-project/mlir/lib/Tools/mlir-opt/MlirOptMain.cpp:568:14
#55 0x00005c544d1c11f5 mlir::MlirOptMain(int, char**, llvm::StringRef, mlir::DialectRegistry&) /home/j/llvm-project/mlir/lib/Tools/mlir-opt/MlirOptMain.cpp:584:10
#56 0x00005c544a624265 main /home/j/llvm-project/mlir/tools/mlir-opt/mlir-opt.cpp:297:33
#57 0x000073b19aa43cd0 (/usr/lib/libc.so.6+0x25cd0)
#58 0x000073b19aa43d8a __libc_start_main (/usr/lib/libc.so.6+0x25d8a)
#59 0x00005c544a623de5 _start (/home/j/llvm-project/build/bin/mlir-opt+0x405dde5)
[1]    114374 segmentation fault (core dumped)  mlir-opt --convert-linalg-to-affine-loops   --canonicalize  --lower-affine