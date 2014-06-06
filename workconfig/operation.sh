#!/bin/bash

echo "1. Decide Condition"
if [ $# -lt 1 ]
then
    echo "###>>> USAGE: Shell_Name  Path1 [ Path2 [ Path3 [Path4]] ]"
	sleep 1
    return
fi

if [ $# -gt 4 ]
then
    echo "###>>> Error: Too many paras."
	sleep 1
    return
fi

tarPath=pathNotExist
target=fileNotExist

echo "2. Begin the case block"

for x in $@
do
	case $x in
	"e")
		tarPath="lib"
		target="libwebcore.so"
		;;
	"f")
		tarPath="framework"
		target="framework.jar"
		;;
	"p")
		tarPath="app"
		target="Browser.apk"
		;;
	"i")
		tarPath="lib"
		target="libwebkitcompiface.so"
		;;
	*)
		echo "Wrong paras, we will exit"
		return
		;;
	esac


	cd "/system/$tarPath/"

	echo "2.1 jump in to $PWD"

	rm $target 
	if [ $? -eq 0 ]
	then
		echo "2.2 remove $target success"
	else
		echo "2.2 remove $target failed"
		return
	fi

	busybox tftp -gr  $target 172.20.7.4 
	if [ $? -eq 0 ]
	then
		echo "2.3 download $target success"
	else
		echo "2.3 download $target failed"
		return
	fi

	chmod 755 $target 
	if [ $? -eq 0 ]
	then
		echo "2.4 chmod $target 755 success"
	else
		echo "2.4 chmod $target 755 failed"
		return
	fi

	sleep 1
done

echo "3. Will reboot in 2 seconds"
sleep 2
reboot

