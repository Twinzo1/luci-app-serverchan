# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=luci-app-serverchan
LUCI_DEPENDS:=+iputils-arping +curl +iw
LUCI_PKGARCH:=all
PKG_VERSION:=1.47
PKG_RELEASE:=6

include $(TOPDIR)/feeds/luci/luci.mk
# call BuildPackage - OpenWrt buildroot signature
$(eval $(call BuildPackage,$(PKG_NAME)))

