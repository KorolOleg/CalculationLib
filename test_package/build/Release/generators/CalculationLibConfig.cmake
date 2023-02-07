########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(CalculationLib_FIND_QUIETLY)
    set(CalculationLib_MESSAGE_MODE VERBOSE)
else()
    set(CalculationLib_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/CalculationLibTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${CalculationLib_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(CalculationLib_VERSION_STRING "1.0")
set(CalculationLib_INCLUDE_DIRS ${CalculationLib_INCLUDE_DIRS_RELEASE} )
set(CalculationLib_INCLUDE_DIR ${CalculationLib_INCLUDE_DIRS_RELEASE} )
set(CalculationLib_LIBRARIES ${CalculationLib_LIBRARIES_RELEASE} )
set(CalculationLib_DEFINITIONS ${CalculationLib_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${CalculationLib_BUILD_MODULES_PATHS_RELEASE} )
    message(${CalculationLib_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


