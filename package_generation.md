```bash
cd path_with_conanfile.py
conan create .

CMake Error at CMakeLists.txt:1 (cmake_minimum_required):
CMake 3.23 or higher is required.  You are running version 3.22.1
```

solution from here: https://docs.conan.io/en/latest/reference/conanfile/tools/cmake/cmaketoolchain.html  
``` 
By default, the version schema of the generated CMakeUserPresets.json is 4  
and the schema for the CMakePresets.json is 3, so they require CMake >= 3.23.
```

```bash
conan install . -c tools.cmake.cmaketoolchain.presets:max_schema_version=2
```

