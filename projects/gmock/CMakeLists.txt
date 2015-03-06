project(projectName)
cmake_minimum_required(VERSION 2.8)

link_directories($ENV{GMOCK_HOME} $ENV{GMOCK_HOME}/gtest)
add_definitions(-std=c++0x)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Weffc++ -Wlogical-op -pedantic")

set(sources
    project_name.cpp)
add_executable(project_name_test ${sources})

target_link_libraries(project_name_test pthread)
target_link_libraries(project_name_test gmock)
target_link_libraries(project_name_test gtest_main)
