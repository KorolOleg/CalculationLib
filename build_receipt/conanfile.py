from conans import ConanFile, CMake, tools
import os


class CalculationLibrary(ConanFile):
    name = "CalculationLibrary"
    version = "1.0"

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"

    def source(self):
        print("source")
        git = tools.Git(self.source_folder)
        git.clone("https://github.com/KorolOleg/conan_poc.git")

    def build(self):
        print("build")
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        print("package")
        self.copy("*.h", dst="inc", keep_path=False)
        self.copy("*.a", dst="lib", keep_path=False)

    def package_info(self):
        print("package_info")
        self.cpp_info.libs = ["CalculationLibrary"]
        self.cpp_info.libdirs = ["lib"]
        self.cpp_info.includedirs = ["inc"]
