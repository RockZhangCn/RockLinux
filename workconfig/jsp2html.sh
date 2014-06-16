#!/bin/bash
if [ $# -lt 1 ]
then
	echo "Usage: . Script.sh dir_contain_jsp_files  original_surfix=jsp  target_surfix=html"
	return 
fi

find $1 -name "*.jsp"  > sdafas.txt

for file in `cat sdafas.txt`
do
	sed -i "s#\.jsp#\.html#g" $file 
	mv $file ${file%.*}.html
	echo $file is renamed.
done


rm sdafas.txt
