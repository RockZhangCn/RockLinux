#!/bin/bash
# Author : ROCK
# Description : Upgrade Browser Module in less than 5 seconds.
# Usage : busybox sh up.sh [e p f i c]
# e  for    libwebcore.so           E xternal 
# p  for    Browser.apk				P ackage
# f  for	framework.jar           F ramework
# i  for	libwebkitcompiface.so   I nterface
# c  for	libbwevtcenter.so		C enter

echo "1. Decide Condition"
if [ $# -lt 1 ]
then
    echo "###>>> USAGE: Shell_Name  Path1 [ Path2 [ Path3 [Path4]] ]"
	sleep 1
    return
fi

if [ $# -gt 5 ]
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
	"c")
		tarPath="lib"
		target="libbwevtcenter.so"
		;;
	*)
		echo "Wrong paras, we will exit"
		return
		;;
	esac


	cd "/system/$tarPath/"

	echo "2.1 jump in to $PWD"

	rm -rf $target 
	if [ $? -eq 0 ]
	then
		echo "2.2 remove $target success"
	else
		echo "2.2 remove $target failed"
	fi

#wget http://172.18.195.108/$target
	wget http://10.17.161.59/$target

	if [ $? -eq 0 ]
	then
		echo "2.3 download $target success"
	else
		echo "The File has been removed #########################"
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

echo "3. Will reboot in 1 seconds"
sleep 1
reboot

