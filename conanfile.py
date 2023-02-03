from conans import ConanFile,  CMake, tools

class CalculationLib(ConanFile):
    name = "CalculationLib"
    version = "1.0"
    settings = "os", "compiler", "build_type", "arch"

    requires = [("nlohmann_json/3.10.3")]

    generators = "cmake", "cmake_find_package"

    def source(self):
        print("source")
        git = tools.Git(self.source_folder)
        git.clone("git@github.com:KorolOleg/CalculationLib.git")

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
        self.cpp_info.libs = ["CalculationLib"]
        self.cpp_info.libdirs = ["lib"]
        self.cpp_info.includedirs = ["inc"]
