include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-upgrade-static-interface-ffhh
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-upgrade-static-interface-ffhh
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Configure infaces with static IP
  DEPENDS:=+gluon-core +gluon-ebtables
endef

define Package/gluon-upgrade-static-interface-ffhh/description
	This package allows to define interface with static ip adresses in gluon config
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-upgrade-static-interface-ffhh/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-upgrade-static-interface-ffhh))
