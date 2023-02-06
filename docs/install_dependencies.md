edit conanfile.py
   lookup dependency in conan.io

if dependency present
edit CMakeLists.txt
```cmake   
set(CMAKE_MODULE_PATH "${CMAKE_BINARY_DIR};${CMAKE_MODULE_PATH}")
find_package(nlohmann_json)

target_link_libraries(${PROJECT_NAME} nlohmann_json::nlohmann_json)
```
install dependencies using conan 

2 ways to do this, using CLI
```bash
  cd cmake-build-debug
  conan install .. ## path to conan.py
```
using cmake file functionality:
https://github.com/conan-io/cmake-conan
