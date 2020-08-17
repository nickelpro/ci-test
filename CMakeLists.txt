cmake_minimum_required(VERSION 3.16)
project(test CXX)

add_executable(main main.cpp)
target_compile_features(main PRIVATE cxx_std_20)
target_compile_options(main PRIVATE -Wall -Wpedantic)
