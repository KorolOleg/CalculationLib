https://docs.conan.io/en/latest/developing_packages/package_dev_flow.html



```bash
conan source . --source-folder=tmp/source
conan install . -s build_type=Debug --install-folder=cmake-build-debug

conan install . --install-folder=tmp/build [--profile XXXX]

conan build . --source-folder=tmp/source --build-folder=tmp/build

conan package . --source-folder=tmp/source --build-folder=tmp/build --package-folder=tmp/package
```


conan install . -s build_type=Release --install-folder=cmake-build-release


#### setting up CLion
https://docs.conan.io/en/latest/reference/conanfile/tools/cmake/cmaketoolchain.html?highlight=conan_toolchain%20cmake

Cmake/settings set:
`-DCMAKE_TOOLCHAIN_FILE=/home/olegkorol/dev/play_ground/CalculationLib/cmake-build-debug/generators/conan_toolchain.cmake`

Looks like this is obsolete:
https://docs.conan.io/en/latest/integrations/ide/clion.html?highlight=cmake%20generator