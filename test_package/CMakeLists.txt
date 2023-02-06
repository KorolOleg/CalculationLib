cmake_minimum_required(VERSION 3.23)

set(CMAKE_CXX_STANDARD 20)

#### conan install
list(APPEND CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR})

if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/0.18.1/conan.cmake"
            "${CMAKE_BINARY_DIR}/conan.cmake"
            TLS_VERIFY ON)
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)

#conan_cmake_configure(REQUIRES CalculationLib/1.0
#        GENERATORS cmake_find_package)

conan_cmake_autodetect(settings)

conan_cmake_install(PATH_OR_REFERENCE ${CMAKE_CURRENT_SOURCE_DIR}
        INSTALL_FOLDER ${CMAKE_BINARY_DIR}
        BUILD missing
        REMOTE conancenter
        SETTINGS ${settings})

find_package(CalculationLib)

add_executable(test_package main.cpp)
target_link_libraries(test_package PRIVATE ${PROJECT_NAME})


## https://docs.conan.io/en/latest/reference/generators/cmake_find_package.html#cmake-cmake-find-package-generator-reference
if(TARGET CalculationLib::CalculationLib)
    message("exists")
    target_link_libraries(test_package PUBLIC CalculationLib::CalculationLib)
endif()