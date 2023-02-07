# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(CalculationLib_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(CalculationLib_FRAMEWORKS_FOUND_RELEASE "${CalculationLib_FRAMEWORKS_RELEASE}" "${CalculationLib_FRAMEWORK_DIRS_RELEASE}")

set(CalculationLib_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET CalculationLib_DEPS_TARGET)
    add_library(CalculationLib_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET CalculationLib_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${CalculationLib_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${CalculationLib_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:nlohmann_json::nlohmann_json;boost::boost>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### CalculationLib_DEPS_TARGET to all of them
conan_package_library_targets("${CalculationLib_LIBS_RELEASE}"    # libraries
                              "${CalculationLib_LIB_DIRS_RELEASE}" # package_libdir
                              CalculationLib_DEPS_TARGET
                              CalculationLib_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "CalculationLib")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${CalculationLib_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET CalculationLib::CalculationLib
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${CalculationLib_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${CalculationLib_LIBRARIES_TARGETS}>
                 APPEND)

    if("${CalculationLib_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET CalculationLib::CalculationLib
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     CalculationLib_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET CalculationLib::CalculationLib
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${CalculationLib_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET CalculationLib::CalculationLib
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${CalculationLib_INCLUDE_DIRS_RELEASE}> APPEND)
    set_property(TARGET CalculationLib::CalculationLib
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${CalculationLib_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET CalculationLib::CalculationLib
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${CalculationLib_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(CalculationLib_LIBRARIES_RELEASE CalculationLib::CalculationLib)
