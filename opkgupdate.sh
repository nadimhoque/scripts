#!/bin/ash

#This is to upgrade the packages on openwrt

for package in $(opkg list-upgradable | awk '{print $1}'); do 
	opkg upgrade $package 
done
