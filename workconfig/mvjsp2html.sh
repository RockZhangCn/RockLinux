#!/bin/bash
if [ $# -lt 1 ]
then
	echo "Usage: . Script.sh dir_contain_jsp_files  original_surfix=jsp  target_surfix=html"
	return 
fi

for file in `find $1 -name "*.jsp"` 
do
#replace the link to right file.
#echo "s#\.$1#\.$2#g"
sed -i "s#\.jsp#\.html#g" $file 
#sed -i "s#\.$1#\.$2#g" zhang1.txt
#rename the file to new surfix.
mv $file ${file%.*}.html
#print the files changed
echo $file is renamed.
done
