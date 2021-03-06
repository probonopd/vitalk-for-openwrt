include $(TOPDIR)/rules.mk

PKG_NAME:=vitalk
PKG_VERSION:=HEAD
PKG_RELEASE:=$(PKG_SOURCE_VERSION)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://github.com/klauweg/vitalk.git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/vitalk
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libc
  TITLE:=Communication with Vitodens 300 (B3HA) via Optolink
  URL:=http://openv.wikispaces.com/ViTalk
endef

define Package/vitalk/description
  Vitodens telnet Interface
endef

define Package/vitalk/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/vitalk $(1)/usr/bin/
endef

$(eval $(call BuildPackage,vitalk))
