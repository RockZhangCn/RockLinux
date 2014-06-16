#!/bin/bash

backpath=/home/rock/myModifyBackup/

fileslist=$backpath"filelist_back"

#==============================Restore function=================================#
cd $backpath
function restore_bakcup()
{
	for file in `cat $fileslist`
	do
		filename=${file##*/}
		cp $filename ${file%/*}
		echo ${file%/*}/$filename
	done
}
restore_bakcup



#==============================Restore function=================================#

