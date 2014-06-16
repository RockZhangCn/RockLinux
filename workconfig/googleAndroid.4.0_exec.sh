#!/bin/bash
export PATH=/opt/jdk1.6.0_31/bin:$PATH
export PATH=/home/rock/Android.4.0.1/out/host/linux-x86/bin:$PATH
export ANDROID_PRODUCT_OUT=/home/rock/Android.4.0.1/out/target/product/generic
export ANDROID_SWT=/home/rock/Android.4.0.1/out/host/linux-x86/framework

cd out/target/product/generic
emulator -system  system.img -data userdata.img -ramdisk ramdisk.img  &
cd -
#ddms &
