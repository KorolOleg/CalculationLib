# we will put find modules files:
list(APPEND CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR})

#################################################################################
# cmake-conan module. This cmake module allows to launch conan install from cmake.
if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
    message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
    file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/0.18.1/conan.cmake"
            "${CMAKE_BINARY_DIR}/conan.cmake"
            TLS_VERIFY ON)
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)

# This function will accept the same arguments as the sections of the conanfile.txt.
#conan_cmake_configure(REQUIRES nlohmann_json/3.10.3
#        GENERATORS cmake_find_package)

# This function will return the auto-detected settings
# (things like build_type, compiler or system name) so you can pass that information to conan_cmake_install.
conan_cmake_autodetect(settings)

# This function is a wrapper for the conan install command.
# You can pass all the arguments that the command supports. Also, you can pass the auto-detected settings
#   https://docs.conan.io/en/latest/reference/commands/consumer/install.html
#       path_or_reference - Path to a folder containing a recipe
conan_cmake_install(PATH_OR_REFERENCE ${CMAKE_CURRENT_SOURCE_DIR}/
        INSTALL_FOLDER ${CMAKE_BINARY_DIR}
        BUILD missing
        REMOTE conancenter
        SETTINGS ${settings}
)


find_package(nlohmann_json 3.10.3 REQUIRED)

add_library(${PROJECT_NAME}
        ${CMAKE_SOURCE_DIR}/sxt_calc/src/sxt_calc.cpp
        ${CMAKE_SOURCE_DIR}/sxt_calc/src/sxt_calc_impl.h
        ${CMAKE_SOURCE_DIR}/sxt_calc/src/include/sxt_calc/sxt_calc.h
)
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)
target_include_directories(${PROJECT_NAME} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src/include/>
        $<INSTALL_INTERFACE:include>
)

target_link_libraries(${PROJECT_NAME} PRIVATE nlohmann_json::nlohmann_json)
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})