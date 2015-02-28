#!/bin/bash

export PATH=/home/rock/.bin:/opt/adt-bundle-linux-x86_64-20140702/eclipse:/opt/jdk1.6.0_45/bin:/opt/android-ndk-r8e:/opt/adt-bundle-linux-x86_64-20140702/sdk/tools:/opt/adt-bundle-linux-x86_64-20140702/sdk/platform-tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

cd /home/rock/androidProj/So_Cpp_smtt 
make clean > /home/rock/crontab/make.log 2>&1
echo "ROCK Check1" >> /home/rock/crontab/make.log 2>&1
make >> /home/rock/crontab/make.log 2>&1
echo "ROCK Check2" >> /home/rock/crontab/make.log 2>&1


cd /home/rock/androidProj/Framework_QQBrowser_Core
ant -f build_dex.xml  >> /home/rock/crontab/make.log 2>&1
echo "ROCK Check3" >> /home/rock/crontab/make.log 2>&1


cd /home/rock/androidProj/UI_QQBrowser_X5
svn revert /home/rock/androidProj/UI_QQBrowser_X5/libs/armeabi/libstlport_shared.so >> /home/rock/crontab/make.log 2>&1
echo "ROCK Check4" >> /home/rock/crontab/make.log 2>&1
ant >> /home/rock/crontab/make.log 2>&1
echo "ROCK Check5" >> /home/rock/crontab/make.log 2>&1
