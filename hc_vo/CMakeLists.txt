#cmake mini version required
CMAKE_MINIMUM_REQUIRED( VERSION 2.8 )

PROJECT( hc_vo )

add_definitions(-std=c++11)

set(OpenCV_DIR  /home/huchao/opencv/opencv-3.0.0/build)
#set execut path bin
SET( EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

#set lib path lib
SET( LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

#include .h files
INCLUDE_DIRECTORIES( ${PROJECT_SOURCE_DIR}/include)
INCLUDE_DIRECTORIES( ${PROJECT_SOURCE_DIR}/3rdparty/sophus/include/ )
INCLUDE_DIRECTORIES( ${PROJECT_SOURCE_DIR}/3rdparty/fast/include/ )
include(cmake/script_eigen.cmake REQUIRED)  #添加Eigen
#include(cmake/script_sophus.cmake REQUIRED) #添加Sophus
include(cmake/script_fast.cmake REQUIRED)   #添加fast lib

#include current project lib


ADD_SUBDIRECTORY( ${PROJECT_SOURCE_DIR}/3rdparty )
ADD_SUBDIRECTORY( ${PROJECT_SOURCE_DIR}/src )
ADD_SUBDIRECTORY( ${PROJECT_SOURCE_DIR}/test )

