dependency: {}
passed compiler: [['(buffer-deallocation)']]
initial error: PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.
valid and unique compilation path: 1
valid and unique compilation path: [['(buffer-deallocation)']]
Execution time: 17.129055976867676 seconds
initial flag: (True, 'PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.')
k: 1
now at deletion level: 105
k: 1
now at deletion level: 104
k: 1
now at deletion level: 103
k: 1
now at deletion level: 102
k: 1
now at deletion level: 101
k: 1
now at deletion level: 100
k: 1
now at deletion level: 99
k: 1
now at deletion level: 98
k: 1
now at deletion level: 97
k: 1
now at deletion level: 96
k: 1
now at deletion level: 95
k: 1
now at deletion level: 94
k: 1
now at deletion level: 93
k: 1
now at deletion level: 92
k: 1
now at deletion level: 91
k: 1
now at deletion level: 90
k: 1
now at deletion level: 89
k: 1
now at deletion level: 88
k: 1
now at deletion level: 87
k: 1
now at deletion level: 86
k: 1
now at deletion level: 85
k: 1
now at deletion level: 84
k: 1
now at deletion level: 83
k: 1
now at deletion level: 82
k: 1
now at deletion level: 81
k: 1
now at deletion level: 80
k: 1
now at deletion level: 79
k: 1
now at deletion level: 78
k: 1
now at deletion level: 77
k: 1
now at deletion level: 76
k: 1
now at deletion level: 75
k: 1
now at deletion level: 74
k: 1
now at deletion level: 73
k: 1
now at deletion level: 72
k: 1
now at deletion level: 71
k: 1
now at deletion level: 70
k: 1
now at deletion level: 69
k: 1
now at deletion level: 68
k: 1
now at deletion level: 67
k: 1
now at deletion level: 66
k: 1
now at deletion level: 65
k: 1
now at deletion level: 64
k: 1
now at deletion level: 63
k: 1
now at deletion level: 62
k: 1
now at deletion level: 61
k: 1
now at deletion level: 60
k: 1
now at deletion level: 59
k: 1
now at deletion level: 58
k: 1
now at deletion level: 57
k: 1
now at deletion level: 56
k: 1
now at deletion level: 55
k: 1
now at deletion level: 54
k: 2
now at deletion level: 53
k: 2
now at deletion level: 52
k: 2
now at deletion level: 51
k: 2
now at deletion level: 50
k: 2
now at deletion level: 49
k: 2
now at deletion level: 48
k: 2
now at deletion level: 47
k: 2
now at deletion level: 46
k: 2
now at deletion level: 45
k: 2
now at deletion level: 44
k: 2
now at deletion level: 43
k: 2
now at deletion level: 42
k: 2
now at deletion level: 41
k: 2
now at deletion level: 40
k: 2
now at deletion level: 39
k: 2
now at deletion level: 38
k: 2
now at deletion level: 37
k: 2
now at deletion level: 36
k: 3
TEST Compiler [['(buffer-deallocation)']]
pass test!
now at deletion level: 35
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '    %c1 = arith.constant 1 : index', '    %c2 = arith.constant 2 : index', '    %c3 = arith.constant 3 : index', '    %c4 = arith.constant 4 : index', '    %c5 = arith.constant 5 : index', '    %c7 = arith.constant 7 : index', '    %c6 = arith.constant 6 : index', '  %6 = llvm.mlir.constant(24583 : i16) : i16', '  %7 = llvm.mlir.constant(24583 : i16) : i16', '  %8 = llvm.mlir.constant(24583 : i16) : i16', '  %9 = llvm.mlir.constant(24583 : i16) : i16', '  %16 = llvm.mlir.constant(24583 : i16) : i16', '  %17 = llvm.mlir.constant(24583 : i16) : i16', '  %18 = llvm.mlir.constant(24583 : i16) : i16', '  %19 = llvm.mlir.constant(24583 : i16) : i16', '  %26 = llvm.mlir.constant(24583 : i16) : i16', '  %27 = llvm.mlir.constant(24583 : i16) : i16', '  %28 = llvm.mlir.constant(24583 : i16) : i16', '  %29 = llvm.mlir.constant(24583 : i16) : i16', '  %31 = llvm.mlir.constant(0 : index) : i64', '  %32 = builtin.unrealized_conversion_cast %31 : i64 to index', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %52 = llvm.mlir.constant(19 : index) : i64', '  %53 = builtin.unrealized_conversion_cast %52 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %197 = llvm.icmp "eq" %190, %31 : i64', '  llvm.cond_br %197, ^bb3, ^bb13', '^bb3:  // pred: ^bb2', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  %alloc_1 = memref.alloc(%53, %32) {alignment = 64 : i64} : memref<?x?x15xi16>', '  linalg.map outs(%alloc_1 : memref<?x?x15xi16>)', '    () {', '      linalg.yield %6 : i16', '    }', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
k: 1
now at deletion level: 70
k: 1
now at deletion level: 69
k: 1
now at deletion level: 68
k: 1
now at deletion level: 67
k: 1
now at deletion level: 66
k: 1
now at deletion level: 65
k: 1
now at deletion level: 64
k: 1
now at deletion level: 63
k: 1
now at deletion level: 62
k: 1
now at deletion level: 61
k: 1
now at deletion level: 60
k: 1
now at deletion level: 59
k: 1
now at deletion level: 58
k: 1
now at deletion level: 57
k: 1
now at deletion level: 56
k: 1
now at deletion level: 55
k: 1
now at deletion level: 54
k: 1
now at deletion level: 53
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
k: 2
now at deletion level: 35
k: 2
now at deletion level: 34
k: 2
now at deletion level: 33
k: 2
now at deletion level: 32
k: 2
now at deletion level: 31
k: 2
now at deletion level: 30
k: 2
now at deletion level: 29
k: 2
now at deletion level: 28
k: 2
now at deletion level: 27
k: 2
now at deletion level: 26
k: 2
now at deletion level: 25
k: 2
now at deletion level: 24
k: 3
now at deletion level: 23
k: 3
now at deletion level: 22
k: 3
now at deletion level: 21
k: 3
now at deletion level: 20
k: 3
now at deletion level: 19
k: 3
now at deletion level: 18
k: 4
now at deletion level: 17
k: 4
now at deletion level: 16
k: 4
now at deletion level: 15
k: 5
now at deletion level: 14
k: 5
now at deletion level: 13
k: 5
now at deletion level: 12
k: 6
now at deletion level: 11
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '    %c1 = arith.constant 1 : index', '    %c2 = arith.constant 2 : index', '    %c3 = arith.constant 3 : index', '    %c4 = arith.constant 4 : index', '    %c5 = arith.constant 5 : index', '    %c7 = arith.constant 7 : index', '    %c6 = arith.constant 6 : index', '  %6 = llvm.mlir.constant(24583 : i16) : i16', '  %31 = llvm.mlir.constant(0 : index) : i64', '  %32 = builtin.unrealized_conversion_cast %31 : i64 to index', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %52 = llvm.mlir.constant(19 : index) : i64', '  %53 = builtin.unrealized_conversion_cast %52 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %197 = llvm.icmp "eq" %190, %31 : i64', '  llvm.cond_br %197, ^bb3, ^bb13', '^bb3:  // pred: ^bb2', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  %alloc_1 = memref.alloc(%53, %32) {alignment = 64 : i64} : memref<?x?x15xi16>', '  linalg.map outs(%alloc_1 : memref<?x?x15xi16>)', '    () {', '      linalg.yield %6 : i16', '    }', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
k: 1
now at deletion level: 59
k: 1
now at deletion level: 58
k: 1
now at deletion level: 57
k: 1
now at deletion level: 56
k: 1
now at deletion level: 55
k: 1
now at deletion level: 54
k: 1
now at deletion level: 53
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
k: 2
now at deletion level: 30
k: 2
now at deletion level: 29
k: 2
now at deletion level: 28
k: 2
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
k: 3
now at deletion level: 20
k: 3
now at deletion level: 19
k: 3
now at deletion level: 18
k: 3
now at deletion level: 17
k: 3
now at deletion level: 16
k: 4
now at deletion level: 15
k: 4
now at deletion level: 14
k: 4
now at deletion level: 13
k: 5
now at deletion level: 12
k: 5
now at deletion level: 11
k: 6
now at deletion level: 10
k: 6
now at deletion level: 9
k: 7
now at deletion level: 8
k: 8
now at deletion level: 7
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %6 = llvm.mlir.constant(24583 : i16) : i16', '  %31 = llvm.mlir.constant(0 : index) : i64', '  %32 = builtin.unrealized_conversion_cast %31 : i64 to index', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %52 = llvm.mlir.constant(19 : index) : i64', '  %53 = builtin.unrealized_conversion_cast %52 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %197 = llvm.icmp "eq" %190, %31 : i64', '  llvm.cond_br %197, ^bb3, ^bb13', '^bb3:  // pred: ^bb2', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  %alloc_1 = memref.alloc(%53, %32) {alignment = 64 : i64} : memref<?x?x15xi16>', '  linalg.map outs(%alloc_1 : memref<?x?x15xi16>)', '    () {', '      linalg.yield %6 : i16', '    }', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
k: 2
now at deletion level: 20
k: 2
now at deletion level: 19
k: 2
now at deletion level: 18
k: 3
now at deletion level: 17
k: 3
now at deletion level: 16
k: 3
now at deletion level: 15
k: 3
now at deletion level: 14
k: 4
now at deletion level: 13
k: 4
now at deletion level: 12
k: 4
now at deletion level: 11
k: 5
now at deletion level: 10
k: 5
now at deletion level: 9
k: 6
now at deletion level: 8
k: 7
now at deletion level: 7
k: 8
now at deletion level: 6
k: 10
now at deletion level: 5
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %6 = llvm.mlir.constant(24583 : i16) : i16', '  %31 = llvm.mlir.constant(0 : index) : i64', '  %32 = builtin.unrealized_conversion_cast %31 : i64 to index', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %52 = llvm.mlir.constant(19 : index) : i64', '  %53 = builtin.unrealized_conversion_cast %52 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %197 = llvm.icmp "eq" %190, %31 : i64', '  llvm.cond_br %197, ^bb3, ^bb13', '^bb3:  // pred: ^bb2', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
k: 1
now at deletion level: 26
k: 1
now at deletion level: 25
k: 2
now at deletion level: 24
k: 2
now at deletion level: 23
k: 2
now at deletion level: 22
k: 2
now at deletion level: 21
k: 2
now at deletion level: 20
k: 2
now at deletion level: 19
k: 2
now at deletion level: 18
k: 2
now at deletion level: 17
k: 3
now at deletion level: 16
k: 3
now at deletion level: 15
k: 3
now at deletion level: 14
k: 3
now at deletion level: 13
k: 4
now at deletion level: 12
k: 4
now at deletion level: 11
k: 4
now at deletion level: 10
k: 5
now at deletion level: 9
k: 6
now at deletion level: 8
k: 6
now at deletion level: 7
k: 8
now at deletion level: 6
k: 9
now at deletion level: 5
k: 12
now at deletion level: 4
k: 16
TEST Compiler [['(buffer-deallocation)']]
pass test!
TEST Compiler [['(buffer-deallocation)']]
pass test!
now at deletion level: 3
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %6 = llvm.mlir.constant(24583 : i16) : i16', '  %31 = llvm.mlir.constant(0 : index) : i64', '  %32 = builtin.unrealized_conversion_cast %31 : i64 to index', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %52 = llvm.mlir.constant(19 : index) : i64', '  %53 = builtin.unrealized_conversion_cast %52 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
k: 1
now at deletion level: 26
k: 1
now at deletion level: 25
k: 1
now at deletion level: 24
k: 1
now at deletion level: 23
k: 2
now at deletion level: 22
k: 2
now at deletion level: 21
k: 2
now at deletion level: 20
k: 2
now at deletion level: 19
k: 2
now at deletion level: 18
k: 2
now at deletion level: 17
k: 2
now at deletion level: 16
k: 3
now at deletion level: 15
k: 3
now at deletion level: 14
k: 3
now at deletion level: 13
k: 3
now at deletion level: 12
k: 4
now at deletion level: 11
k: 4
now at deletion level: 10
k: 5
now at deletion level: 9
k: 5
now at deletion level: 8
k: 6
now at deletion level: 7
k: 7
now at deletion level: 6
k: 9
now at deletion level: 5
k: 11
now at deletion level: 4
k: 15
now at deletion level: 3
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %52 = llvm.mlir.constant(19 : index) : i64', '  %53 = builtin.unrealized_conversion_cast %52 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
k: 2
now at deletion level: 21
k: 2
now at deletion level: 20
k: 2
now at deletion level: 19
k: 2
now at deletion level: 18
k: 2
now at deletion level: 17
k: 2
now at deletion level: 16
k: 2
now at deletion level: 15
k: 3
now at deletion level: 14
k: 3
now at deletion level: 13
k: 3
now at deletion level: 12
k: 3
now at deletion level: 11
k: 4
now at deletion level: 10
k: 4
now at deletion level: 9
k: 5
now at deletion level: 8
k: 6
now at deletion level: 7
k: 7
now at deletion level: 6
k: 8
now at deletion level: 5
k: 10
now at deletion level: 4
k: 14
now at deletion level: 3
k: 21
now at deletion level: 2
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb13:  // pred: ^bb2', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
k: 2
now at deletion level: 20
k: 2
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
k: 3
now at deletion level: 13
k: 3
now at deletion level: 12
k: 3
now at deletion level: 11
k: 4
now at deletion level: 10
k: 4
now at deletion level: 9
k: 5
now at deletion level: 8
k: 5
now at deletion level: 7
k: 6
now at deletion level: 6
k: 8
now at deletion level: 5
k: 10
now at deletion level: 4
k: 13
now at deletion level: 3
k: 20
TEST Compiler [['(buffer-deallocation)']]
pass test!
now at deletion level: 2
['//~/circt/llvm/build/bin/mlir-opt --buffer-deallocation a.mlir', 'llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
k: 2
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
k: 19
now at deletion level: 2
k: 38
now at deletion level: 1
['llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %190 = llvm.extractvalue %71[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
now at deletion level: 2
k: 37
TEST Compiler [['(buffer-deallocation)']]
pass test!
now at deletion level: 1
['llvm.func @malloc(i64) -> !llvm.ptr', 'func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {', '  %33 = llvm.mlir.constant(1 : index) : i64', '  %34 = builtin.unrealized_conversion_cast %33 : i64 to index', '  %40 = llvm.mlir.constant(5 : index) : i64', '  %41 = builtin.unrealized_conversion_cast %40 : i64 to index', '  %58 = llvm.mlir.constant(31 : index) : i64', '  %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<13x13xf16>', '  %59 = llvm.mlir.constant(15 : index) : i64', '  %60 = llvm.mlir.constant(1 : index) : i64', '  %61 = llvm.mul %59, %58  : i64', '  %62 = llvm.mul %61, %58  : i64', '  %63 = llvm.mlir.zero : !llvm.ptr', '  %64 = llvm.getelementptr %63[%62] : (!llvm.ptr, i64) -> !llvm.ptr, i1', '  %65 = llvm.ptrtoint %64 : !llvm.ptr to i64', '  %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr', '  %67 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %70 = llvm.mlir.constant(0 : index) : i64', '  %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %72 = llvm.insertvalue %58, %71[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %73 = llvm.insertvalue %58, %72[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %74 = llvm.insertvalue %59, %73[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %75 = llvm.insertvalue %61, %74[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %76 = llvm.insertvalue %59, %75[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %77 = llvm.insertvalue %60, %76[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>', '  %200 = llvm.icmp "eq" %196, %33 : i64', '  llvm.cond_br %200, ^bb6, ^bb16', '^bb6:  // pred: ^bb5', '  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>', '  llvm.unreachable', '^bb16:  // pred: ^bb5', '  llvm.unreachable', '}']
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
now at deletion level: 2
k: 36
now at deletion level: 1
Minimized IR code:
llvm.func @malloc(i64) -> !llvm.ptr
func.func @func1(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>) -> vector<13x13xi32> {
  %33 = llvm.mlir.constant(1 : index) : i64
  %34 = builtin.unrealized_conversion_cast %33 : i64 to index
  %40 = llvm.mlir.constant(5 : index) : i64
  %41 = builtin.unrealized_conversion_cast %40 : i64 to index
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
  %196 = llvm.extractvalue %77[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
  %200 = llvm.icmp "eq" %196, %33 : i64
  llvm.cond_br %200, ^bb6, ^bb16
^bb6:  // pred: ^bb5
  %201 = memref.load %alloc_0[%41, %34] : memref<13x13xf16>
  llvm.unreachable
^bb16:  // pred: ^bb5
  llvm.unreachable
}
compiler fault chain:
[['(buffer-deallocation)']]
