# At the same DIRECTORY PATH.
diff -ruNa win win.mod/ > mypatch
# r 递归
# u 默认的三行上下文
# N 把缺少的文件当成空文件。
# a 全部当成文本文件。
#
patch -p0 < mypatch 
patch -p0 < mypatch 

patch -d directory  打补丁前，更改当前目录到指定目录


-p{NUM}


这个NUM是指将补丁文件中的目录，去年几个层级。
例如我在android目录下 
diff  externel/webkit > patch.my

当我在webkit目录下打补丁时，由于补丁文件patch.my里面包含的路径有 externel/webkit/×××××
因此我在Webkit目录打补丁时需要去掉补丁文件中的externel/webkit/ 这两层多余的目录，因此
我使用p2打补丁。

patch -p2 < patch.my




