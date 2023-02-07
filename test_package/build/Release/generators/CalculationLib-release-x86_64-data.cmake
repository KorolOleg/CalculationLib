########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(CalculationLib_COMPONENT_NAMES "")
list(APPEND CalculationLib_FIND_DEPENDENCY_NAMES nlohmann_json Boost)
list(REMOVE_DUPLICATES CalculationLib_FIND_DEPENDENCY_NAMES)
set(nlohmann_json_FIND_MODE "NO_MODULE")
set(Boost_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(CalculationLib_PACKAGE_FOLDER_RELEASE "/home/olegkorol/.conan/data/CalculationLib/1.0/_/_/package/a3fdedbb861fa07c3ffd02177cbb7d6cdcaba8e6")
set(CalculationLib_BUILD_MODULES_PATHS_RELEASE )


set(CalculationLib_INCLUDE_DIRS_RELEASE "${CalculationLib_PACKAGE_FOLDER_RELEASE}/include")
set(CalculationLib_RES_DIRS_RELEASE )
set(CalculationLib_DEFINITIONS_RELEASE )
set(CalculationLib_SHARED_LINK_FLAGS_RELEASE )
set(CalculationLib_EXE_LINK_FLAGS_RELEASE )
set(CalculationLib_OBJECTS_RELEASE )
set(CalculationLib_COMPILE_DEFINITIONS_RELEASE )
set(CalculationLib_COMPILE_OPTIONS_C_RELEASE )
set(CalculationLib_COMPILE_OPTIONS_CXX_RELEASE )
set(CalculationLib_LIB_DIRS_RELEASE "${CalculationLib_PACKAGE_FOLDER_RELEASE}/lib")
set(CalculationLib_LIBS_RELEASE CalculationLib)
set(CalculationLib_SYSTEM_LIBS_RELEASE )
set(CalculationLib_FRAMEWORK_DIRS_RELEASE )
set(CalculationLib_FRAMEWORKS_RELEASE )
set(CalculationLib_BUILD_DIRS_RELEASE "${CalculationLib_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(CalculationLib_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${CalculationLib_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${CalculationLib_COMPILE_OPTIONS_C_RELEASE}>")
set(CalculationLib_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${CalculationLib_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${CalculationLib_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${CalculationLib_EXE_LINK_FLAGS_RELEASE}>")


set(CalculationLib_COMPONENTS_RELEASE )