#!/bin/bash

# Example flashing script

# flashing stock frimware for Redmi 6(Cereus)
IMAGES='/home/cereus/images/'
MTKCLIENT_FLASH='$MTKCLIENT_FLASH'

$MTKCLIENT_FLASH logo $IMAGES/logo.bin
$MTKCLIENT_FLASH tee1 $IMAGES/tee.img
$MTKCLIENT_FLASH scp1 $IMAGES/scp.img
$MTKCLIENT_FLASH sspm_1 $IMAGES/sspm.img
$MTKCLIENT_FLASH lk $IMAGES/lk.img
$MTKCLIENT_FLASH tee2 $IMAGES/tee.img
$MTKCLIENT_FLASH scp2 $IMAGES/scp.img
$MTKCLIENT_FLASH sspm_2 $IMAGES/sspm.img
$MTKCLIENT_FLASH lk2 $IMAGES/lk.img
$MTKCLIENT_FLASH odmdtbo $IMAGES/odmdtbo.img
$MTKCLIENT_FLASH spmfw $IMAGES/spmfw.img
$MTKCLIENT_FLASH md1img $IMAGES/md1img.img
$MTKCLIENT_FLASH vendor $IMAGES/vendor.img
$MTKCLIENT_FLASH system $IMAGES/system.img
$MTKCLIENT_FLASH cache $IMAGES/cache.img
$MTKCLIENT_FLASH recovery $IMAGES/recovery.img
$MTKCLIENT_FLASH boot $IMAGES/boot.img
$MTKCLIENT_FLASH cust $IMAGES/cust.img
$MTKCLIENT_FLASH vbmeta $IMAGES/vbmeta.img
$MTKCLIENT_FLASH userdata $IMAGES/userdata.img 

echo "flashing complete"
exit

