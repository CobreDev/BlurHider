THEOS_DEVICE_IP=192.168.1.12

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PodHider

PodHider_FILES = Podhider.xm
PodHider_CFLAGS = -fobjc-arc
PodHider_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += podhiderprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
