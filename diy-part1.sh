#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
pushd /workdir/openwrt/package
git clone https://github.com/kenzok8/small.git
git clone https://github.com/kenzok8/openwrt-packages.git
git clone https://github.com/godros/luci-app-godproxy.git
popd
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i 's/192.168.1.1/192.168.100.1/g' /workdir/openwrt/package/base-files/files/bin/config_generate
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
