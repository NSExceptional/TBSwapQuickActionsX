export TARGET = iphone:latest:latest
include $(THEOS)/makefiles/common.mk


TWEAK_NAME = TBSwapQuickActionsX
TBSwapQuickActionsX_FILES = Tweak.xm
TBSwapQuickActionsX_CFLAGS += -Wno-objc-property-no-attribute
TBSwapQuickActionsX_CFLAGS += -Wno-deprecated-declarations
#TBSwapQuickActionsX_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	find . -name ".DS_Store" -delete

after-install::
	install.exec "killall -9 SpringBoard"
