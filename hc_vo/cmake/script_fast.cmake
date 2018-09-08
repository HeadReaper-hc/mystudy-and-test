# 默认情况下，对FAST库进行编译，从3rdparty目录寻找
# ------------------------------------------------------------------------
IF(EXISTS "${HC_VO_LIBS_ROOT}/3rdparty/fast")
	SET( CMAKE_HC_VO_HAS_FAST 1)
ELSE(EXISTS "${HC_VO_LIBS_ROOT}/3rdparty/fast")
	SET( CMAKE_HC_VO_HAS_FAST 0)
ENDIF(EXISTS "${HC_VO_LIBS_ROOT}/3rdparty/fast")

OPTION(DISABLE_FAST "Disable the fast library" "OFF")
MARK_AS_ADVANCED(DISABLE_FAST)
IF(DISABLE_FAST)
	SET(CMAKE_HC_VO_HAS_FAST 0)
ENDIF(DISABLE_FAST)
