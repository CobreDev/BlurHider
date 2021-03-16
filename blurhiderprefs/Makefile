TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = BlurHiderPrefs

BlurHiderPrefs_FILES = BHPRootListController.m BHPSwitchWithInfoCell.m
BlurHiderPrefs_FRAMEWORKS = UIKit
BlurHiderPrefs_PRIVATE_FRAMEWORKS = Preferences
BlurHiderPrefs_INSTALL_PATH = /Library/PreferenceBundles
BlurHiderPrefs_CFLAGS = -fobjc-arc
BlurHiderPrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk
