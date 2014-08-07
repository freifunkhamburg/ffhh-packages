include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-config-mode-reboot-ffhh
PKG_VERSION:=2

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-config-mode-reboot-ffhh
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Show text on reboot page if mesh vpn is disabled
  DEPENDS:=+gluon-config-mode-core
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-config-mode-reboot-ffhh/install
	$(CP) ./files/* $(1)/
endef

define Package/gluon-config-mode-reboot-ffhh/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,gluon-config-mode-reboot-ffhh))
