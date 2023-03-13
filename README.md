# MLIR-s-benchmark
MLIR's benchmark. We use these programs as input to test compilers and improve the debuggability of compilers

## ONNX-MLIR based Toy Compilation Pass

### Build
1. Clone submodule: `git submodule update --init`
2. Clone LLVM/MLIR:
```
cd onnx-mlir
git clone -n https://github.com/llvm/llvm-project.git
cd llvm-project && git checkout 21f4b84c456b471cc52016cf360e14d45f7f2960 && cd ..
```
3. Build LLVM/MLIR:
```
./build_mlir.sh configure
./build_mlir.sh build
```
4. Build onnx-mlir and toy compiler:
```
./build_onnxmlir.sh configure
./build_onnxmlir.sh build
```

### Usage
TODO
