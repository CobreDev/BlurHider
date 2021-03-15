THEOS_DEVICE_IP=192.168.1.12
DEBUG=1

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PodHider

PodHider_FILES = PodHider.x
PodHider_CFLAGS = -fobjc-arc
PodHider_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += podhiderprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
