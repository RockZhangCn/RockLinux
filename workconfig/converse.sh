#!/bin/bash
echo $1
sourcefile=$1

sed -i '1!G;h;$!d' $sourcefile
tac $sourcefile
