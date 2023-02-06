add_executable(test_client ${CMAKE_CURRENT_SOURCE_DIR}/basic_test.cpp)
target_link_libraries(test_client PRIVATE CalculationLib)