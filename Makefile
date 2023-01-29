TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP=192.168.0.12

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PreferencesOBCTest

PreferencesOBCTest_FILES = Tweak.x
PreferencesOBCTest_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += preferencesobctestpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
