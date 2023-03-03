
cmake_minimum_required(VERSION 3.10.2)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fvisibility=hidden")

project("sdk")

add_library( # Sets the name of the library.
        anygames
        SHARED
        native-lib.cpp)


find_library( # Sets the name of the path variable.
        log-lib
        log)

target_link_libraries( # Specifies the target library.
        anygames
        ${log-lib})