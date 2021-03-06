#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

# Fix Material theme progressbar font size
# sed -i 's/1.3em/1em/g' package/feeds/luci/luci-theme-material/htdocs/luci-static/material/cascade.css

## Enable vlmcsd auto activation
echo srv-host=_vlmcs._tcp.lan,OpenWrt.lan,1688,0,100 >> package/network/services/dnsmasq/files/dnsmasq.conf

## Modify default theme as argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
# sed -i 's/Bootstrap/Argon/g' feeds/luci/collections/luci/Makefile
