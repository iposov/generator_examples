cmake_minimum_required(VERSION 3.9)
project(dm)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc")
set(SOURCE_FILES main.cpp)
add_executable(dm ${SOURCE_FILES})
target_link_libraries(dm ${CMAKE_EXE_LINKER_FLAGS})