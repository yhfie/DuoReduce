# MLIR-s-benchmark
MLIR's benchmark. We use these programs as input to test compilers and improve the debuggability of compilers

A task list can be found [here](TODO.md).

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
```bash
./compile_mlir.sh configure
./compile_mlir.sh build
```
4. Clone onnx-mlir submodules:
```bash
cd onnx-mlir
git submodule update --init
```
4. Build onnx-mlir and toy compiler:
```
./compile_onnxmlir.sh configure
./compile_onnxmlir.sh build
```

### Usage
TODO
