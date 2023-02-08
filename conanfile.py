import os
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
    default_options = {"shared": True, "fPIC": True}

    exports_sources = "CMakeLists.txt", "src/*"

    requires = [("nlohmann_json/3.10.3"),
                ("boost/1.81.0")]

    # https://github.com/conan-io/conan/issues/3663
    # default_options = "boost:shared=True"

    # https://docs.conan.io/en/latest/developing_packages/package_layout.html#package-layout
    def layout(self):
        # cmake_layout(self)
        self.folders.source = "."
        build_type = str(self.settings.build_type).lower()
        self.folders.build = "cmake-build-{}".format(build_type)
        self.folders.generators = os.path.join(self.folders.build, "generators")

    def configure(self):
        # https://docs.conan.io/en/latest/mastering/conditional.html
        self.options["boost"].shared = True

    # generators = "CMakeToolchain"
    # https://docs.conan.io/en/latest/migrating_to_2.0/recipes.html#the-generate-method
    def generate(self):
        tc = CMakeToolchain(self)
        # create conan_toolchain.cmake file that maps the Conan settings and options to CMake syntax.
        # also generates a CMakePresets.json standard file (https://cmake.org/cmake/help/latest/manual/cmake-presets.7.html)
        tc.generate()

        # https://docs.conan.io/en/latest/reference/conanfile/tools/cmake/cmakedeps.html
        # https://docs.conan.io/en/latest/reference/conanfile/tools/cmake/cmake.html
        deps = CMakeDeps(self)
        deps.generate()

    def build(self):
        cmake = CMake(self)
        # manages to pass -DCMAKE_TOOLCHAIN_FILE=<path>/conan_toolchain.cmake
        # Reads the CMakePresets.json file generated by the CMakeToolchain
        cmake.configure()
        cmake.build()

    def package(self):
        print("package")
        self.copy("src/include/*", dst="include/sxt_calc", keep_path=False)
        self.copy("*.a", dst="lib", keep_path=False)
        self.copy("*.lib", dst="lib", keep_path=False)
        self.copy("*.so", dst="lib", keep_path=False)

    # information for consumers
    def package_info(self):
        print("package_info")
        self.cpp_info.libs = ["CalculationLib"]
        self.cpp_info.libdirs = ["lib"]
        self.cpp_info.includedirs = ["include"]
