### lookup in conan
Look if required dependencies are available from conan
search for existing packages:
1-st option: `https://conan.io/center/`
2-nd CLI: `conan search package_name --remote=conancenter`

getting package information:
`conan inspect poco/1.12.3`


edit conanfile.py
   lookup dependency in conan.io

### adjust conanfile.py accordingly
```text
    requires = [("nlohmann_json/3.10.3"),
                ("boost/1.81.0")]
```


### use cmake find_package
if dependency present
edit CMakeLists.txt
```cmake   
find_package(nlohmann_json)
target_link_libraries(${PROJECT_NAME} nlohmann_json::nlohmann_json)
```

### install dependencies to the local cache
install dependencies using conan (use 1-st option)

2 options to do this
1. using CLI
```bash
  cd package_root
  conan install . ## path to conan.py
  conan create .
```
2. using cmake file functionality (TODO: look up if there is a way in Conan 2.0 for it)
https://github.com/conan-io/cmake-conan


as a result dependencies were installed and
