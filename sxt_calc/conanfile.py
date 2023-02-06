from conans import ConanFile,  CMake, tools

class CalculationLib(ConanFile):
    name = "CalculationLib"
    url = "https://github.com/KorolOleg/CalculationLib"
    description = "PoC to try out Conan functionality for our workflows"
    version = "1.0"
    settings = "os", "compiler", "build_type", "arch"

    requires = [("nlohmann_json/3.10.3"),
                ("boost/1.81.0")]

    ## cmake generator, creates conanbuildinfo.cmake file that defines CMake variables
    ## including paths and library names that can be used in our build.
    ## https://docs.conan.io/en/latest/reference/generators.html#generators-reference
    generators = "cmake", "cmake_find_package"

    def source(self):
        print("source")
        git = tools.Git(self.source_folder)
        git.clone("git@github.com:KorolOleg/CalculationLib.git", "master")

    def build(self):
        print("build")
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        print("package")
        self.copy("*.h", dst="include", keep_path=False)
        self.copy("*.a", dst="lib", keep_path=False)
        self.copy("*.lib", dst="lib", keep_path=False)

    def package_info(self):
        print("package_info")
        self.cpp_info.libs = ["CalculationLib"]
        self.cpp_info.libdirs = ["lib"]
        self.cpp_info.includedirs = ["include"]
