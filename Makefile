THEOS_DEVICE_IP=192.168.1.12

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BlurHider

BlurHider_FILES = BlurHider.xm
BlurHider_CFLAGS = -fobjc-arc
BlurHider_FRAMEWORKS = UIKit Foundation
BlurHider_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += blurhiderprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
