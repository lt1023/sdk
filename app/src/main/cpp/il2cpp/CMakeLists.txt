add_definitions(-DENABLE_DEBUG -DABC)
cmake_minimum_required(VERSION 3.6)
include_directories(src/main/cpp/include)
if(${ANDROID_ABI} MATCHES "arm64-v8a")
    file(GLOB Scaffolding "${CMAKE_SOURCE_DIR}/Il2cpp-Scaffolding-ARM64/*.cpp")
elseif(${ANDROID_ABI} MATCHES  "armeabi-v7a")
    file(GLOB Scaffolding "${CMAKE_SOURCE_DIR}/Il2cpp-Scaffolding-ARM/*.cpp")
elseif(${ANDROID_ABI} MATCHES  "x86")
    file(GLOB Scaffolding "${CMAKE_SOURCE_DIR}/Il2cpp-Scaffolding-x86/*.cpp")
endif()

find_package(base REQUIRED CONFIG)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fvisibility=hidden")

file(GLOB native_srcc "${CMAKE_SOURCE_DIR}/*.cpp")

add_library(
        anygames
        SHARED
        ${native_srcc}
        ${Scaffolding}
        )
target_link_libraries(
        anygames
        base::tool
        android
        z
        log)