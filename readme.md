# c-study1

## Setup (win11 home)

### 1. install vscode

### 2. install cmake (add env var)

### 3. install llvm (add env var)

### 4. install make for windows (add env var)
- https://gnuwin32.sourceforge.net/packages/make.htm

### 5. install vscode-extensions: 
- [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
- [clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)

### 6. ctrl + shift + p -> **CMake: Edit User-Local CMake Kits**

### 7. Edit `cmake-tools-kits.json`
```json
[
  {
    "name": "Clang 23.1.4 x86_64-pc-windows-msvc",
    "compilers": {
      "C": "c:\\LLVM\\bin\\clang.exe",
      "CXX": "c:\\LLVM\\bin\\clang++.exe"
    },
    "isTrusted": true
  }
]
```

### 8. Create CMakeLists.txt
```CMakeLists.txt
cmake_minimum_required(VERSION 3.21)
project(pure-c-practice LANGUAGES C)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(main main.c)
```

### 9. Create main.c
```c
#include <stdio.h>
int main() {
  printf("hello world\n");
  return 0;
}
```

### 10. Create Makefile
```Makefile
all: debug
debug:
	@cmake -S . -B build
	@cmake --build build
	@cls
	@build/main.exe
```

### 11. Run
```bash
make
```