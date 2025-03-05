// https://github.com/llvm/circt/issues/6226
// circt-opt foo.mlir --mlir-print-op-generic
hw.module @Bar0(in %0: i1) {
}

hw.module @Bar1(in %a: i1) {
}

hw.module @Bar2(in %0 "space here" : i1) {
}

hw.module @Bar3(in %b "space here" : i1) {
}