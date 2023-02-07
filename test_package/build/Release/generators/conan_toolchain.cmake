

# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()

message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")

if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()










string(APPEND CONAN_CXX_FLAGS " -m64")
string(APPEND CONAN_C_FLAGS " -m64")
string(APPEND CONAN_SHARED_LINKER_FLAGS " -m64")
string(APPEND CONAN_EXE_LINKER_FLAGS " -m64")

add_compile_definitions(_GLIBCXX_USE_CXX11_ABI=0)


# Extra c, cxx, linkflags and defines


if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
# The root (which is the default builddirs) path of dependencies in the host context
list(PREPEND CMAKE_MODULE_PATH "/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6/" "/home/olegkorol/.conan/data/nlohmann_json/3.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/" "/home/olegkorol/.conan/data/zlib/1.2.13/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/" "/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/" "/home/olegkorol/.conan/data/libbacktrace/cci.20210118/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_PROGRAM_PATH "/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6/bin" "/home/olegkorol/.conan/data/boost/1.81.0/_/_/package/9bb382e9c85821936d59f1c4ea5134768df38de2/bin" "/home/olegkorol/.conan/data/zlib/1.2.13/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/bin" "/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/bin" "/home/olegkorol/.conan/data/libbacktrace/cci.20210118/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/bin")
list(PREPEND CMAKE_LIBRARY_PATH "/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6/lib" "/home/olegkorol/.conan/data/boost/1.81.0/_/_/package/9bb382e9c85821936d59f1c4ea5134768df38de2/lib" "/home/olegkorol/.conan/data/zlib/1.2.13/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/lib" "/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/lib" "/home/olegkorol/.conan/data/libbacktrace/cci.20210118/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/lib")
list(PREPEND CMAKE_INCLUDE_PATH "/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6/include" "/home/olegkorol/.conan/data/nlohmann_json/3.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include" "/home/olegkorol/.conan/data/boost/1.81.0/_/_/package/9bb382e9c85821936d59f1c4ea5134768df38de2/include" "/home/olegkorol/.conan/data/zlib/1.2.13/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/include" "/home/olegkorol/.conan/data/bzip2/1.0.8/_/_/package/c32092bf4d4bb47cf962af898e02823f499b017e/include" "/home/olegkorol/.conan/data/libbacktrace/cci.20210118/_/_/package/dfbe50feef7f3c6223a476cd5aeadb687084a646/include")



if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "/home/olegkorol/dev/play_ground/CalculationLib/test_package/build/Release/generators:$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "/home/olegkorol/dev/play_ground/CalculationLib/test_package/build/Release/generators:")
endif()




# Variables
# Variables  per configuration


# Preprocessor definitions
# Preprocessor definitions per configuration
