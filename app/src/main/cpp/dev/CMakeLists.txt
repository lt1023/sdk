add_definitions(-DENABLE_DEBUG -DABC)
cmake_minimum_required(VERSION 3.6)
include_directories(src/main/cpp/include)

find_package(base REQUIRED CONFIG)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fvisibility=hidden")
#set(CMAKE_C_FLAGS "-Wall -Wextra -Werror -fvisibility=hidden")
#set(CMAKE_CXX_FLAGS " -Werror -fvisibility=hidden")

file(GLOB native_srcc "${CMAKE_SOURCE_DIR}/*.cpp")
add_library(
        anygames
        SHARED
        ${native_srcc}
        )
target_link_libraries(
        anygames
        base::tool
        android
        z
        log)