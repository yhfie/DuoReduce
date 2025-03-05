#map0 = affine_map<(i,k) -> (2*(i mod 2) + (k mod 2) + 4 * (i floordiv 2) + 8*(k floordiv 2))>
#map1 = affine_map<(k,j) -> ((k mod 2) + 2 * (j mod 2) + 8 * (k floordiv 2) + 4*(j floordiv 2))>
#map2 = affine_map<(i,j) -> (4*i+j)>

func.func @test_norm(%arg0 :  memref<4x4xf32,#map2>) -> () {
    %0 = memref.alloc() : memref<4x8xf32,#map0>
    %1 = memref.alloc() : memref<8x4xf32,#map1>
    %2 = memref.alloc() : memref<4x4xf32,#map2>

    %cst = arith.constant 3.0 : f32
    %cst0 = arith.constant 0 : index

    affine.for %i = 0 to 4 {
        affine.for %j = 0 to 8 {
                affine.for %k = 0 to 8 {
                    %a = memref.load %0[%i, %k] : memref<4x8xf32,#map0>

                    %b = memref.load %1[%k, %j] :memref<8x4xf32,#map1>
                    %c = memref.load %2[%i, %j] : memref<4x4xf32,#map2>

                    %3 = arith.mulf %a, %b : f32
                    %4 = arith.addf %3, %c : f32
                    affine.store %4, %arg0[%i, %j] : memref<4x4xf32,#map2>
            }
        }
    }
    return
}