include $(TOPDIR)/rules.mk

PKG_NAME:=site2domain
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include ../../../package/gluon.mk

define Package/site2domain
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Set gluon.core.domain according to legacy site name, to prepare for multidomain gluon
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/site2domain/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
endef

$(eval $(call BuildPackage,site2domain))