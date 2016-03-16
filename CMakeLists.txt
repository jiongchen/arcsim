cmake_minimum_required(VERSION 2.8)
cmake_policy(SET CMP0048 NEW)

project(arcsim VERSION 0.2.1)

set(CMAKE_CXX_FLAGS "-fopenmp -Wreturn-type ${CMAKE_CXX_FLAGS}")

# local dependencies
include_directories(${CMAKE_SOURCE_DIR}/dependencies/include)
link_directories(${CMAKE_SOURCE_DIR}/dependencies/lib)

# BOOST
find_package(Boost COMPONENTS system filesystem REQUIRED)

# PNG
find_package(PNG REQUIRED)

# GLUT
find_package(GLUT)

# OPENGL
find_package(OpenGL)

add_subdirectory(src)
