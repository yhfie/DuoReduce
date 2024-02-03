dependency: {'generate-runtime-verification': {'func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to'}, 'test-written-to': {'func.func(test-match-reduction)', 'arith-emulate-wide-int'}, 'arith-emulate-wide-int': {'func.func(test-match-reduction)'}}
passed compiler: [['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm', 'int-range-optimizations', 'canonicalize', '(test-diagnostic-filter{filters=source1})', '(test-vector-unrolling-patterns{unroll-based-on-type})', '(gpu-to-llvm{use-bare-pointers-for-host use-bare-pointers-for-kernels})', '(buffer-deallocation)'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm', 'int-range-optimizations', 'canonicalize', '(test-diagnostic-filter{filters=source1})', '(test-vector-unrolling-patterns{unroll-based-on-type})', '(gpu-to-llvm{use-bare-pointers-for-host use-bare-pointers-for-kernels})'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm', 'int-range-optimizations', 'canonicalize', '(test-diagnostic-filter{filters=source1})', '(test-vector-unrolling-patterns{unroll-based-on-type})'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm', 'int-range-optimizations', 'canonicalize', '(test-diagnostic-filter{filters=source1})'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm', 'int-range-optimizations', 'canonicalize'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm', 'int-range-optimizations'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm', 'convert-cf-to-llvm'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm', 'convert-openmp-to-llvm'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm', 'convert-arith-to-llvm'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm', 'finalize-memref-to-llvm'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa', 'convert-vector-to-llvm'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline', 'sroa'], ['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline']]
initial error: mlir-opt: /home/jiyuan/circt/llvm/mlir/lib/IR/PatternMatch.cpp:326: mlir::RewriterBase::eraseOp(mlir::Operation*)::<lambda(mlir::Operation*)>: Assertion `mayBeGraphRegion(*op->getParentRegion()) && "expected that op has no uses"' failed.
valid and unique compilation path: 1
valid and unique compilation path: [['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline']]
Execution time: 226.37995290756226 seconds
initial flag: (True, 'mlir-opt: /home/jiyuan/circt/llvm/mlir/lib/IR/PatternMatch.cpp:326: mlir::RewriterBase::eraseOp(mlir::Operation*)::<lambda(mlir::Operation*)>: Assertion `mayBeGraphRegion(*op->getParentRegion()) && "expected that op has no uses"\' failed.')
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
['//mlir-opt --canonicalize a.mlir', 'func.func private @func2() {', '  %c8 = arith.constant 8 : index', '  %c25 = arith.constant 25 : index', '  %alloc_15 = memref.alloc(%c25) {alignment = 64 : i64} : memref<?x3xf16>', '  %10 = bufferization.to_tensor %alloc_15 : memref<?x3xf16>', '  %13 = memref.alloca_scope  -> (memref<27xf32>) {', '    %c0_79 = arith.constant 0 : index', '    %c89 = arith.constant 89 : index', '    %c1_80 = arith.constant 1 : index', '    %161 = scf.for %arg1 = %c0_79 to %c89 step %c1_80 iter_args(%arg2 = %10) -> (tensor<?x3xf16>) {', '      %alloc_93 = memref.alloc(%c8) {alignment = 64 : i64} : memref<?x3xf16>', '      %194 = bufferization.to_tensor %alloc_93 : memref<?x3xf16>', '      scf.yield %194 : tensor<?x3xf16>', '    }', '    %172 = math.ceil %161 : tensor<?x3xf16>', '    %alloc_92 = memref.alloc() : memref<27xf32>', '    memref.alloca_scope.return %alloc_92 : memref<27xf32>', '  }', '  %115 = bufferization.clone %13 : memref<27xf32> to memref<27xf32>', '  return', '}']
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
TEST Compiler [['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline']]
pass test!
now at deletion level: 1
['func.func private @func2() {', '  %c8 = arith.constant 8 : index', '  %c25 = arith.constant 25 : index', '  %alloc_15 = memref.alloc(%c25) {alignment = 64 : i64} : memref<?x3xf16>', '  %10 = bufferization.to_tensor %alloc_15 : memref<?x3xf16>', '  %13 = memref.alloca_scope  -> (memref<27xf32>) {', '    %c0_79 = arith.constant 0 : index', '    %c89 = arith.constant 89 : index', '    %c1_80 = arith.constant 1 : index', '    %161 = scf.for %arg1 = %c0_79 to %c89 step %c1_80 iter_args(%arg2 = %10) -> (tensor<?x3xf16>) {', '      %alloc_93 = memref.alloc(%c8) {alignment = 64 : i64} : memref<?x3xf16>', '      %194 = bufferization.to_tensor %alloc_93 : memref<?x3xf16>', '      scf.yield %194 : tensor<?x3xf16>', '    }', '    %172 = math.ceil %161 : tensor<?x3xf16>', '    %alloc_92 = memref.alloc() : memref<27xf32>', '    memref.alloca_scope.return %alloc_92 : memref<27xf32>', '  }', '  %115 = bufferization.clone %13 : memref<27xf32> to memref<27xf32>', '  return', '}']
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
func.func private @func2() {
  %c8 = arith.constant 8 : index
  %c25 = arith.constant 25 : index
  %alloc_15 = memref.alloc(%c25) {alignment = 64 : i64} : memref<?x3xf16>
  %10 = bufferization.to_tensor %alloc_15 : memref<?x3xf16>
  %13 = memref.alloca_scope  -> (memref<27xf32>) {
    %c0_79 = arith.constant 0 : index
    %c89 = arith.constant 89 : index
    %c1_80 = arith.constant 1 : index
    %161 = scf.for %arg1 = %c0_79 to %c89 step %c1_80 iter_args(%arg2 = %10) -> (tensor<?x3xf16>) {
      %alloc_93 = memref.alloc(%c8) {alignment = 64 : i64} : memref<?x3xf16>
      %194 = bufferization.to_tensor %alloc_93 : memref<?x3xf16>
      scf.yield %194 : tensor<?x3xf16>
    }
    %172 = math.ceil %161 : tensor<?x3xf16>
    %alloc_92 = memref.alloc() : memref<27xf32>
    memref.alloca_scope.return %alloc_92 : memref<27xf32>
  }
  %115 = bufferization.clone %13 : memref<27xf32> to memref<27xf32>
  return
}
compiler fault chain:
[['func.func(test-match-reduction)', 'arith-emulate-wide-int', 'test-written-to', 'generate-runtime-verification', 'inline']]
