add_library(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/sxt_calc/src/sxt_calc.cpp)

target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/sxt_calc/include)




find_package(nlohmann_json 3.10.3 REQUIRED)
target_link_libraries(${PROJECT_NAME} PUBLIC nlohmann_json::nlohmann_json)