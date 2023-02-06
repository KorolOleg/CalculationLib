from conans import ConanFile, CMake

class CalculationService(ConanFile):
    name = "CalculationLibTestPackage"
    version = "1.0"
    settings = "os", "compiler", "build_type", "arch"
    requires = "CalculationLib/1.0"
    generators = "cmake", "cmake_find_package"