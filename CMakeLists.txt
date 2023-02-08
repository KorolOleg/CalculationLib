cmake_minimum_required(VERSION 3.23)
project(CalculationLib VERSION 1.0)

set(CMAKE_CXX_STANDARD 20)

find_package(nlohmann_json 3.10.3 REQUIRED)
find_package(Boost 1.81.0 COMPONENTS date_time iostreams system program_options)

add_library(${PROJECT_NAME}
        ${CMAKE_CURRENT_SOURCE_DIR}/src/sxt_calc.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/sxt_calc_impl.h
        ${CMAKE_CURRENT_SOURCE_DIR}/src/include/sxt_calc/sxt_calc.h
        )
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)
target_include_directories(${PROJECT_NAME} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src/include/>
        $<INSTALL_INTERFACE:include>
        )

target_link_libraries(${PROJECT_NAME} PRIVATE Boost::date_time Boost::iostreams Boost::system Boost::program_options)
target_link_libraries(${PROJECT_NAME} PRIVATE nlohmann_json::nlohmann_json)
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})






