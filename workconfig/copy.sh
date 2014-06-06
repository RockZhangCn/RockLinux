#!/bin/bash
targetPath=/home/apache/
cp out/target/product/c03ref/system/lib/libwebcore.so $targetPath
cp out/target/product/c03ref/system/lib/libwebkitcompiface.so $targetPath
cp out/target/product/c03ref/system/framework/framework.jar $targetPath
cp out/target/product/c03ref/system/app/Browser.apk $targetPath

targetPath=/home/tftproot/
cp out/target/product/c03ref/system/lib/libwebcore.so $targetPath
cp out/target/product/c03ref/system/lib/libwebkitcompiface.so $targetPath
cp out/target/product/c03ref/system/framework/framework.jar $targetPath
cp out/target/product/c03ref/system/app/Browser.apk $targetPath
