#!/bin/ash

#This is to upgrade the packages on openwrt
opkg update
echo "upgradable packages"
opkg list-upgradable
echo ""
echo "performing the upgrade"
for package in $(opkg list-upgradable | awk '{print $1}'); do 
	opkg upgrade $package 
done
