from conans import ConanFile, CMake

class CalculationLib(ConanFile):
    name = "Calculation library"
    version = "1.0"
    settings = "os", "compiler", "build_type", "arch"

    requires = [("nlohmann_json/3.10.3")]

    generators = "cmake", "cmake_find_package"
