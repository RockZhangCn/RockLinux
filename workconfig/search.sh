#!/bin/bash

if [ $# -ne 1 ] 
then
	echo "###>>> USAGE: Shell_Name  Path1 [ Path2 [ Path3 ...] ]"
	return 0
fi


grep -nr $1 ./

