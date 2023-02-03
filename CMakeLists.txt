cmake_minimum_required(VERSION 3.23)
project(CalculationLib)

set(CMAKE_CXX_STANDARD 20)

### path where we will run conan install
list(APPEND CMAKE_MODULE_PATH "${CMAKE_BINARY_DIR}")

### running conan install using cmake functionality
if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.make from https://github.com/conan-io/cmake-conan/")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/master/conan.cmake"
    "${CMAKE_BINARY_DIR}/conan.cmake")
endif()
include(${CMAKE_BINARY_DIR}/conan.cmake)

add_subdirectory(sxt_calc)
add_subdirectory(test_client)




