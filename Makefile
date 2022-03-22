include $(TOPDIR)/rules.mk

PKG_NAME:=vpn-routes
PKG_VERSION:=1
PKG_RELEASE:=$(COMMITCOUNT)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=net
  CATEGORY:=Network
  TITLE:=vpn-routes
  DEPENDS:=
  PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
	Shell tool to create and remove routes to destinations like VPN gateways.
endef

define Build/Compile
	:
endef

define Package/$(PKG_NAME)/install
	cp -r files/* $(1)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
