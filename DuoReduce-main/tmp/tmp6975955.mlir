//mlir-opt --convert-cf-to-llvm a.mlir
  %7 = vector.mask %cst_8 { vector.mask %cst_6 { vector.multi_reduction <and>, %cst_6, %cst_6 [] : vector<10xi1> to vector<10xi1> } : vector<10xi1> -> vector<10xi1> } : vector<27xi1> -> vector<27xi1>
  return
}