//mlir-opt --shape-to-shape-lowering --convert-bufferization-to-memref --mlir-print-ir-after-failure temp.mlir
  func.func nested @func1(%arg0: tensor<13xf32>, %arg1: memref<?x10x19xi16>, %arg2: i32) -> tensor<13x10x19xi16> {
    %c399409779_i64 = arith.constant 399409779 : i64
    %cst = arith.constant 1.78212314E+9 : f32
    %c335554098_i64 = arith.constant 335554098 : i64
    %true = arith.constant true
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %8 = tensor.empty() : tensor<13x10x19xi16>
    %alloc = memref.alloc() : memref<13xi1>
    %alloc_5 = memref.alloc(%c0) : memref<?xi64>
    %alloc_12 = memref.alloc() : memref<13xf16>
    %16 = index.xor %c2, %c2
    %26 = bufferization.clone %alloc_12 : memref<13xf16> to memref<13xf16>
    scf.execute_region {
      %130 = vector.load %alloc_5[%c0] : memref<?xi64>, vector<13x10x19xi64>
      %131 = scf.parallel (%arg3, %arg4) = (%c0, %c2) to (%c0, %c2) step (%c2, %c2) init (%130) -> vector<13x10x19xi64> {
        %152 = vector.broadcast %c399409779_i64 : i64 to vector<13x19xi64>
        %153 = vector.broadcast %true : i1 to vector<13x10x19xi1>
        %154 = vector.mask %153 { vector.multi_reduction <minui>, %130, %152 [1] : vector<13x10x19xi64> to vector<13x19xi64> } : vector<13x10x19xi1> -> vector<13x19xi64>
        %163 = vector.broadcast %c399409779_i64 : i64 to vector<13x10x19xi64>
        scf.reduce(%163)  : vector<13x10x19xi64> {
        ^bb0(%arg5: vector<13x10x19xi64>, %arg6: vector<13x10x19xi64>):
          %171 = vector.broadcast %c335554098_i64 : i64 to vector<13x10x19xi64>
          scf.reduce.return %171 : vector<13x10x19xi64>
        }
        scf.yield
      }
      %132 = memref.load %26[%c2] : memref<13xf16>
      scf.yield
    }
    %86 = bufferization.to_tensor %alloc : memref<13xi1>
    return %8 : tensor<13x10x19xi16>
  }