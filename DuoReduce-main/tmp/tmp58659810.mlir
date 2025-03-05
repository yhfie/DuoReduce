llvm.func @malloc91( vector<27xi1> -> vector<27xi1>)-> vector<27xi1> -> vector<27xi1>
  %cst_8 = arith.constant dense<true> : vector<27xi1>
  %7 = vector.mask %cst_8 { vector.mask %cst_6 { vector.multi_reduction <and>, %cst_6, %cst_6 [] : vector<10xi1> to vector<10xi1> } : vector<10xi1> -> vector<10xi1> } : vector<27xi1> -> vector<27xi1>
%1134=llvm.call @malloc91(%7):( vector<27xi1> -> vector<27xi1>)-> vector<27xi1> -> vector<27xi1>
  return
}