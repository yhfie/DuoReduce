//~/circt/llvm/build/bin/mlir-opt 56914.mlir -pass-pipeline='builtin.module(func.func(convert-linalg-to-loops,convert-scf-to-cf),expand-strided-metadata, finalize-memref-to-llvm,lower-affine,convert-func-to-llvm,convert-arith-to-llvm, reconcile-unrealized-casts )' | ~/circt/llvm/build/bin/mlir-cpu-runner -e main -entry-point-result=void -shared-libs=/home/jiyuan/circt/llvm/build/lib/libmlir_c_runner_utils.so.16git
#map0 = affine_map<(d0, d1)[s0] -> (d0 * 128 + s0 + d1)>
#map1 = affine_map<(d0, d1)[s0, s1] -> (d0 * s1 + s0 + d1)>
module {
  func.func @matmul(%arg0: memref<128x128xf32>, %arg1: memref<128x128xf32>, %arg2: memref<128x128xf32>) attributes {llvm.emit_c_interface} {
    %cst = arith.constant 0.000000e+00 : f32
    linalg.fill ins(%cst : f32) outs(%arg2 : memref<128x128xf32>)
    %c0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    scf.for %arg3 = %c0 to %c128 step %c8 {
      scf.for %arg4 = %c0 to %c128 step %c4 {
        scf.for %arg5 = %c0 to %c128 step %c16 {
          %0 = memref.subview %arg0[%arg3, %arg4] [8, 4] [1, 1] : memref<128x128xf32> to memref<8x4xf32, #map0>
          %1 = memref.subview %arg1[%arg4, %arg5] [4, 16] [1, 1] : memref<128x128xf32> to memref<4x16xf32, #map0>
          %2 = memref.subview %arg2[%arg3, %arg5] [8, 16] [1, 1] : memref<128x128xf32> to memref<8x16xf32, #map0>
          %c2 = arith.constant 2 : index
          scf.for %arg6 = %c0 to %c8 step %c2 {
            scf.for %arg7 = %c0 to %c16 step %c4 {
              %3 = memref.subview %0[%arg6, 0] [2, 4] [1, 1] : memref<8x4xf32, #map0> to memref<2x4xf32, #map0>
              %4 = memref.subview %1[0, %arg7] [4, 4] [1, 1] : memref<4x16xf32, #map0> to memref<4x4xf32, #map0>
              %5 = memref.subview %2[%arg6, %arg7] [2, 4] [1, 1] : memref<8x16xf32, #map0> to memref<2x4xf32, #map0>
              %6 = memref.alloc() : memref<32xi8>
              %7 = memref.view %6[%c0][%c2, %c4] : memref<32xi8> to memref<?x?xf32>
              %8 = memref.subview %7[0, 0] [%c2, %c4] [1, 1] : memref<?x?xf32> to memref<?x?xf32, #map1>
              %9 = memref.alloc() : memref<32xi8>
              %10 = memref.view %9[%c0][%c2, %c4] : memref<32xi8> to memref<?x?xf32>
              %11 = memref.subview %10[0, 0] [%c2, %c4] [1, 1] : memref<?x?xf32> to memref<?x?xf32, #map1>
              memref.copy %3, %8 : memref<2x4xf32, #map0> to memref<?x?xf32, #map1>
              memref.copy %5, %11 : memref<2x4xf32, #map0> to memref<?x?xf32, #map1>
              //linalg.matmul ins(%8, %4 : memref<?x?xf32, #map1>, memref<4x4xf32, #map0>) outs(%11 : memref<?x?xf32, #map1>)
              memref.copy %11, %5 : memref<?x?xf32, #map1> to memref<2x4xf32, #map0>
              memref.dealloc %6 : memref<32xi8>
              memref.dealloc %9 : memref<32xi8>
            }
          }
        }
      }
    }
    return
  }
  func.func @main() {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 1.280000e+02 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    %0 = memref.alloc() : memref<128x128xf32>
    %1 = memref.alloc() : memref<128x128xf32>
    %2 = memref.alloc() : memref<128x128xf32>
    linalg.fill ins(%cst : f32) outs(%0 : memref<128x128xf32>)
    linalg.fill ins(%cst : f32) outs(%1 : memref<128x128xf32>)
    call @matmul(%2, %0, %1) : (memref<128x128xf32>, memref<128x128xf32>, memref<128x128xf32>) -> ()
    scf.for %arg0 = %c0 to %c128 step %c1 {
      scf.for %arg1 = %c0 to %c128 step %c1 {
        %3 = memref.load %2[%arg0, %arg1] : memref<128x128xf32>
        %4 = arith.cmpf oeq, %3, %cst_0 : f32
        cf.assert %4, "Matmul does not produce the right output"
      }
    }
    memref.dealloc %0 : memref<128x128xf32>
    memref.dealloc %1 : memref<128x128xf32>
    memref.dealloc %2 : memref<128x128xf32>
    return
  }
}
