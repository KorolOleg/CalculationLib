from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout

# https://docs.conan.io/en/latest/reference/conanfile/tools/cmake/cmakedeps.html
# The CMakeDeps helper will generate one xxxx-config.cmake file per dependency ...
from conan.tools.cmake import CMakeDeps

class CalculationLib(ConanFile):
    name = "CalculationLib"
    version = "1.0"
    url = "https://github.com/KorolOleg/CalculationLib"
    description = "PoC to try out Conan functionality for our workflows"

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False], "fPIC": [True, False]}
    default_options = {"shared": False, "fPIC": True}

    exports_sources = "CMakeLists.txt", "src/*"

    requires = [("nlohmann_json/3.10.3"),
                ("boost/1.81.0")]

    def layout(self):
        cmake_layout(self)

    # generators = "CMakeToolchain"
    def generate(self):
        tc = CMakeToolchain(self)
        # create conan_toolchain.cmake file that maps the Conan settings and options to CMake syntax.
        tc.generate()

        # https://docs.conan.io/en/latest/reference/conanfile/tools/cmake/cmakedeps.html
        cmd = CMakeDeps(self)
        cmd.generate()

    def build(self):
        cmake = CMake(self)
        # manages to pass -DCMAKE_TOOLCHAIN_FILE=<path>/conan_toolchain.cmake
        # actual arguments in CMakePresets.json
        cmake.configure()
        cmake.build()

    def package(self):
        print("package")
        self.copy("src/include/*", dst="include/sxt_calc", keep_path=False)
        self.copy("*.a", dst="lib", keep_path=False)
        self.copy("*.lib", dst="lib", keep_path=False)

    # information for consumers
    def package_info(self):
        print("package_info")
        self.cpp_info.libs = ["CalculationLib"]
        self.cpp_info.libdirs = ["lib"]
        self.cpp_info.includedirs = ["include"]
