#!/bin/bash

mkdir configs/rockchip-lite
curl -o configs/rockchip-lite/01-lite https://downloads.openwrt.org/releases/24.10.0/targets/rockchip/armv8/config.buildinfo

cat >> configs/rockchip-lite/01-lite <<EOL
CONFIG_PACKAGE_ath10k-firmware-qca6174=y
CONFIG_PACKAGE_kmod-usb-gadget=y
CONFIG_PACKAGE_kmod-usb-dwc2=y 
CONFIG_PACKAGE_iw=y
EOL

