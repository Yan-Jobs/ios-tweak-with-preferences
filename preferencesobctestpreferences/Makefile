TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = PreferencesOBCTestPreferences

PreferencesOBCTestPreferences_FILES = YPTRootListController.m
PreferencesOBCTestPreferences_FRAMEWORKS = UIKit
PreferencesOBCTestPreferences_PRIVATE_FRAMEWORKS = Preferences
PreferencesOBCTestPreferences_INSTALL_PATH = /Library/PreferenceBundles
PreferencesOBCTestPreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
