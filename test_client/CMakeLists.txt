add_executable(test_client ${CMAKE_SOURCE_DIR}/test_client/src/main.cpp)
target_link_libraries(test_client PRIVATE CalculationLib)