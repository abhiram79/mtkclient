#!/bin/bash

# MTK Vendor ID
MTK_VENDOR="0e8d"

echo "[*] Waiting for MediaTek Preloader device..."

while true; do
    if lsusb | grep -i "$MTK_VENDOR" > /dev/null; then
        clear
        echo "[+] MTK Preloader detected!"
        echo ""
        echo "[*] Flashing Stock frimware"
        ./flash.sh
        # =================================

        break
    fi
    sleep 1
done
