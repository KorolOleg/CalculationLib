########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(nlohmann_json_COMPONENT_NAMES "")
set(nlohmann_json_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(nlohmann_json_PACKAGE_FOLDER_RELEASE "/home/olegkorol/.conan/data/nlohmann_json/3.10.3/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(nlohmann_json_BUILD_MODULES_PATHS_RELEASE )


set(nlohmann_json_INCLUDE_DIRS_RELEASE "${nlohmann_json_PACKAGE_FOLDER_RELEASE}/include")
set(nlohmann_json_RES_DIRS_RELEASE )
set(nlohmann_json_DEFINITIONS_RELEASE )
set(nlohmann_json_SHARED_LINK_FLAGS_RELEASE )
set(nlohmann_json_EXE_LINK_FLAGS_RELEASE )
set(nlohmann_json_OBJECTS_RELEASE )
set(nlohmann_json_COMPILE_DEFINITIONS_RELEASE )
set(nlohmann_json_COMPILE_OPTIONS_C_RELEASE )
set(nlohmann_json_COMPILE_OPTIONS_CXX_RELEASE )
set(nlohmann_json_LIB_DIRS_RELEASE )
set(nlohmann_json_LIBS_RELEASE )
set(nlohmann_json_SYSTEM_LIBS_RELEASE )
set(nlohmann_json_FRAMEWORK_DIRS_RELEASE )
set(nlohmann_json_FRAMEWORKS_RELEASE )
set(nlohmann_json_BUILD_DIRS_RELEASE "${nlohmann_json_PACKAGE_FOLDER_RELEASE}/")

# COMPOUND VARIABLES
set(nlohmann_json_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${nlohmann_json_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${nlohmann_json_COMPILE_OPTIONS_C_RELEASE}>")
set(nlohmann_json_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${nlohmann_json_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${nlohmann_json_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${nlohmann_json_EXE_LINK_FLAGS_RELEASE}>")


set(nlohmann_json_COMPONENTS_RELEASE )