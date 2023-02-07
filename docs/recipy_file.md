### creation
use a template as a base recipy file for further extension
basic recipy file is described here: https://docs.conan.io/en/latest/creating_packages/getting_started.html#packaging-getting-started
or creat one from scratch

```bash
mkdir package_dir && cd package_dir
conan new package_name/0.1 --template=cmake_lib
```

### key elements

#### cmake integration
https://docs.conan.io/en/latest/reference/conanfile/tools/cmake.html#conan-tools-cmake

