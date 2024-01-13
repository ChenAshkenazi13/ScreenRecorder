cmake_minimum_required (VERSION 3.8)
project (ScreenRecorder)

set(CMAKE_C_STANDARD 14)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_compile_options(-Wall)

message("in root")

include_directories(src)
add_subdirectory (src)