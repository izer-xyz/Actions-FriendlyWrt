#!/bin/bash

sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi

mkdir configs/rockchip-lite
curl -o configs/rockchip-lite/01-lite https://downloads.openwrt.org/releases/24.10.0/targets/rockchip/armv8/config.buildinfo
