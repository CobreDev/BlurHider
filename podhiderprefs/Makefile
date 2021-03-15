TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = PodHiderPrefs

PodHiderPrefs_FILES = PHPRootListController.m PHPSwitchWithInfoCell.m
PodHiderPrefs_FRAMEWORKS = UIKit
PodHiderPrefs_PRIVATE_FRAMEWORKS = Preferences
PodHiderPrefs_INSTALL_PATH = /Library/PreferenceBundles
PodHiderPrefs_CFLAGS = -fobjc-arc
PodHiderPrefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk
