#!/system/bin/sh
#
# set some props, depending on device
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

setdevicespecs() {
    resetprop "ro.product.name" "$1"
    resetprop "ro.build.product" "$1"
    resetprop "ro.vendor.product.device" "$1"
    resetprop "ro.system.product.device" "$1"
    resetprop "ro.system_ext.product.device" "$1"
    resetprop "ro.odm.product.device" "$1"
    resetprop "ro.product.device" "$1"
    resetprop "ro.product.product.device" "$1"
    resetprop "ro.product.bootimage.device" "$1"
    resetprop "ro.product.odm.device" "$1"
    resetprop "ro.product.system.device" "$1"
    resetprop "ro.product.system_ext.device" "$1"
    resetprop "ro.product.vendor.device" "$1"
}

load_INDIA()
{
    resetprop "ro.product.model" "Pad 6"
    resetprop "ro.product.odm.model" "Pad 6"
    resetprop "ro.product.system.model" "Pad 6"
    resetprop "ro.product.vendor.model" "Pad 6"
    resetprop "ro.product.system_ext.model" "Pad 6"
    resetprop "ro.product.product.model" "Pad 6"
    resetprop "ro.product.brand" "Xiaomi"
    resetprop "ro.product.odm.brand" "Xiaomi"
    resetprop "ro.product.system.brand" "Xiaomi"
    resetprop "ro.product.system_ext.brand" "Xiaomi"
    resetprop "ro.product.product.brand" "Xiaomi"
    resetprop "ro.product.vendor.brand" "Xiaomi"
    setdevicespecs "pipa"
}

load_CN()
{
    resetprop "ro.product.model" "Pad 6"
    resetprop "ro.product.odm.model" "Pad 6"
    resetprop "ro.product.system.model" "Pad 6"
    resetprop "ro.product.vendor.model" "Pad 6"
    resetprop "ro.product.system_ext.model" "Pad 6"
    resetprop "ro.product.product.model" "Pad 6"
    resetprop "ro.product.brand" "Xiaomi"
    resetprop "ro.product.odm.brand" "Xiaomi"
    resetprop "ro.product.system.brand" "Xiaomi"
    resetprop "ro.product.system_ext.brand" "Xiaomi"
    resetprop "ro.product.product.brand" "Xiaomi"
    resetprop "ro.product.vendor.brand" "Xiaomi"
    setdevicespecs "pipa"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "INDIA")
        load_INDIA;
        ;;
    "CN")
        load_CN;
        ;;
esac

exit 0
#
