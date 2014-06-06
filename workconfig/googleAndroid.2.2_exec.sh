#/bin/bash
export PATH=/opt/jdk1.5.0_22/bin:$PATH
export PATH=/home/rock/Google_Android/out/host/linux-x86/bin:$PATH
export ANDROID_PRODUCT_OUT=/home/rock/Google_Android/out/target/product/generic
export ANDROID_SWT=/home/rock/Google_Android/out/host/linux-x86/framework

cd out/target/product/generic
emulator -system  system.img -data userdata.img -ramdisk ramdisk.img  &
cd -
#ddms &
