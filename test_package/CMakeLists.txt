cmake_minimum_required(VERSION 3.15)
project(PackageTest CXX)

find_package(CalculationLib CONFIG REQUIRED)

add_executable(testCalculationLibPackage main.cpp)
target_link_libraries(testCalculationLibPackage CalculationLib::CalculationLib)