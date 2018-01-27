export TARGET = iphone:latest:latest
include $(THEOS)/makefiles/common.mk


TWEAK_NAME = TBSwiapQuickActionsX
TBSwiapQuickActionsX_FILES = Tweak.xm
TBSwiapQuickActionsX_CFLAGS += -Wno-objc-property-no-attribute
TBSwiapQuickActionsX_CFLAGS += -Wno-deprecated-declarations
#TBSwiapQuickActionsX_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	find . -name ".DS_Store" -delete

after-install::
	install.exec "killall -9 SpringBoard"
