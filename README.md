# DuoReduce
Repo for DuoReduce. We use these programs as input to test compilers and improve the debuggability of compilers

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

5. Build CIRCT:
Check the link [here](https://circt.llvm.org/docs/GettingStarted/) 

### Usage
The ddmin main algorithm and compilation dependency-aware algorithm are in the folder DDMIN. You can check the implementation with ddmin.py. You can run our benchmark by running
```bash
./run_ddmin.sh
```
You can also find our baseline Perses and Vulcan. You can invoke Vulcan by running perses. Check detail [here](https://github.com/uw-pluverse/perses)

You need MLIR.g4 to start with Perses and Vulcan. We already prepared it in the Perses folder (and also added necessary modifications in our Perses), so you should be able to run it directly with the MLIR generic.

If you want to add a new benchmark, you need to provide an oracle (to check the bug is still here), an initial compilation path (check the example mlir-pass.txt), and the original IR code. Then do
```
python ddmin.py orcle.sh path.txt IRcode.mlir
```
