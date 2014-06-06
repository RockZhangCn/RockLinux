sed -i  -e '/\.svn/!d' temp.log #delete lines no ".svn"
sed -i  -e '/\.svn/d' temp.log   #  delete lines contains .svn
