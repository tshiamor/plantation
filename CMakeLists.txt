cmake_minimum_required(VERSION 2.8 FATAL_ERROR)


set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(PROJECT_NAME plantation)

project(${PROJECT_NAME})

find_package(PCL 1.2 REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable (${PROJECT_NAME}_trim src/trim.cpp )
target_link_libraries (${PROJECT_NAME}_trim ${PCL_LIBRARIES})


add_executable (${PROJECT_NAME}_pmf src/pmf.cpp )
target_link_libraries (${PROJECT_NAME}_pmf ${PCL_LIBRARIES})

add_executable (${PROJECT_NAME}_sor src/outlier_remover.cpp )
target_link_libraries (${PROJECT_NAME}_sor ${PCL_LIBRARIES})



