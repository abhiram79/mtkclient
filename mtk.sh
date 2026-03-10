#!/bin/bash
# This script used for start flashing immediately after a usb connection found from mtk brom mode.

# run the script after brom mode found.
# See the example script in the repo if not sure how to configure it
FLASH_SCRIPT="./flash.sh"

# MediaTek USB VCOM IDs
MTK_VENDOR_ID="0e8d"   # MediaTek vendor ID
MTK_PRODUCT_ID="0003"  # Change the product id according to yours

# Function to check MTK device using lsusb
check_device_brom_mode() {
    lsusb | grep -i "${MTK_VENDOR_ID}:${MTK_PRODUCT_ID}" >/dev/null
    return $?
}
# Main loop to monitor the system for new connections
while true; do
    if check_device_brom_mode; then
        echo "MTK device detected in BROM mode!"
        # Run the Flash script 
        $FLASH_SCRIPT
        break
    fi
    # Check for New device every 1 second.
    sleep 1
done
