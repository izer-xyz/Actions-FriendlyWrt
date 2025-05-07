#!/bin/bash

mkdir configs/rockchip-lite
curl -o configs/rockchip-lite/01-lite https://downloads.openwrt.org/releases/24.10.0/targets/rockchip/armv8/config.buildinfo

cat >> configs/rockchip-lite/01-lite <<EOL
CONFIG_PACKAGE_ath10k-firmware-qca6174=y
CONFIG_PACKAGE_kmod-usb-gadget=y
CONFIG_PACKAGE_kmod-usb-dwc2=y 
CONFIG_PACKAGE_iw=y
EOL

echo Force .config from configs/rockchip-lite/01-lite
cp configs/rockchip-lite/01-lite  friendlywrt/.config

echo Change image size 

sed -e "s/ENABLE_OPT_PARTITION=true/ENABLE_OPT_PARTITION=false/g" rk3528/base.mk
sed -e "s/TARGET_SD_IMAGESIZE=1500/TARGET_SD_IMAGESIZE=255/g" rk3528/base.mk
