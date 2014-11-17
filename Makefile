GO_EASY_ON_ME = 1
SDKVERSION = 8.0
ARCHS = armv7 arm64

include theos/makefiles/common.mk
TWEAK_NAME = WeatherFix8
WeatherFix8_FILES = Tweak.xm
WeatherFix8_FRAMEWORKS = UIKit
WeatherFix8_PRIVATE_FRAMEWORKS = Weather

include $(THEOS_MAKE_PATH)/tweak.mk

