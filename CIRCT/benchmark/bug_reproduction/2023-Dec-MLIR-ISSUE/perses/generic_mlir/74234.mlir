"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "func1", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = 30 : index}> : () -> index
    %1 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %2 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %3 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %4 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %5 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %6 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %7 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %8 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %10 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %11 = "builtin.unrealized_conversion_cast"(%0) : (index) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "func2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "func.call"() <{callee = @func1}> : () -> index
    %2 = "index.maxu"(%0, %1) : (index, index) -> index
    "llvm.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

