#!/bin/bash

export USERNAME='rocksnzhang'

path=/home/rock/debug_mtt/codeheart

if [ $# == 0 ]
then
	"$path"/runtime/bin/java -Xms256M -Xmx512M -jar "$path"/app/codeheart.jar
else
	workspacePath=$PWD
	operateType=$1    
	"$path"/runtime/bin/java -Xms256M -Xmx512M -jar "$path"/app/codeheart.jar "$operateType" "$workspacePath"
fi

