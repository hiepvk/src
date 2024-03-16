export TARGET = iphone:clang:latest:14.0
export ARCHS = arm64


ifndef YOUTUBE_VERSION
YOUTUBE_VERSION = 8.8.8
endif

PACKAGE_VERSION = $(YOUTUBE_VERSION)

INSTALL_TARGET_PROCESSES = YouTube
TWEAK_NAME = Hiepvk
DISPLAY_NAME = YouTube
BUNDLE_ID = com.google.ios.youtube

$(TWEAK_NAME)_FILES := $(wildcard Sources/*.xm) $(wildcard Sources/*.x)
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -DTWEAK_VERSION=\"$(PACKAGE_VERSION)\"

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk