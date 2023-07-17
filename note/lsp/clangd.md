# 简介
[clangd](https://clangd.llvm.org/)

## Project setup
clangd will look in the parent directories of the files you edit looking for it, and also in subdirectories named `build/`.
在 build下生成compile_commands.json
```sh
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=True ..

# Bear is a tool to generate a compile_commands.json file by recording a complete build.
# For a make-based build, you can run   to generate the file (and run a clean build!).
make clean; 
bear -- make
```

### bear 生成compile_commands.json

```cpp

```