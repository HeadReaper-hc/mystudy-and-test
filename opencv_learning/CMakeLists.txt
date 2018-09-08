CMAKE_MINIMUM_REQUIRED( VERSION 2.8 )

FIND_PACKAGE( OpenCV REQUIRED )

INCLUDE_DIRECTORIES( ${OpenCV_INCLUDE_DIR} )

ADD_EXECUTABLE( FileStorage_test FileStorage_test.cpp )
ADD_EXECUTABLE( Video2Pic video2pic.cpp )
ADD_EXECUTABLE( camera_calibration camera_calibration.cpp)

TARGET_LINK_LIBRARIES( FileStorage_test ${OpenCV_LIBRARIES} )
TARGET_LINK_LIBRARIES( Video2Pic ${OpenCV_LIBRARIES} )
TARGET_LINK_LIBRARIES( camera_calibration ${OpenCV_LIBRARIES} )
