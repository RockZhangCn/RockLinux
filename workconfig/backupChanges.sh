#!/bin/bash

backpath=/home/rock/myModifyBackup/

svn_output=$backpath"svn_status_out"
svn_second=$backpath"svn_status_second_out"

fileslist=$backpath"filelist_back"

###################################################
cat /dev/null > $fileslist

function sub_list() 
{
	cd $1

	svn status > $svn_output

	awk '{print $2 }' $svn_output  > $svn_second

	sed "s#^#$1/#g" -i $svn_second

	cat $svn_second  >> $fileslist

}
cdi
sub_list $PWD
cde
sub_list $PWD
cdp
sub_list $PWD
cdf
sub_list $PWD


###################################################
#---------------------------------------------------------#
#para1: The file contains the files to backup.
#para2: The path to backup the modified files.

function sub_print()
{
	filelist=$1
	backpath=$2	
	for i in `cat $filelist`
	do
		cp $i $backpath -rf
	done
}

sub_print  $fileslist $backpath


rm $svn_output $svn_second -rf

#==============================Restore function=================================#
# Not used now.
function restore_bakcup()
{
	for file in `cat $fileslist`
	do
		filename=${file##*/}
		cp $filename ${file%/*}
	done
}

#==============================Restore function=================================#
cd 
