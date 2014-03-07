#!/bin/bash

if [ $# -lt 1 ]
then
	echo "<<USAGE>>: . deploy.sh [1:enable] [0:restore]"
	return
fi


CURPATH=$PWD

if [ $1 -eq 1 ]
then

echo "begin to enable rock's config"

#Save our original config.
#############################################
ENV_PATH=~/.config/envronment_config
if [ -f $ENV_PATH ]
then
	echo "config dir have been created"
else
	mkdir -p $ENV_PATH
fi

cd $HOME
cp .vim .vimrc .bashrc $ENV_PATH -rf 
echo "Save our original config success"
#################Save end####################


#Enable our config
#############################################
cd $HOME 
if [ -f .bin ]
then
	echo ".bin dir have been created"
else
	mkdir -p .bin
fi
mkdir -p ~/.vim
cd $CURPATH
cp -rf coding ctags cscope com svndiff mydiff rock melddiff ~/.bin
cp -rf subversion_config ~/.subversion/config
cp -rf bashrc ~/.bashrc 
rm ~/.vim -rf
cp vim ~/.vim -rf
cp vimrc ~/.vimrc
source ~/.bashrc
echo "Enable rock's config success"
##################Enable end################
return
fi


if [ $1 -eq 0 ]
then
#Restore our original config.
ENV_PATH=~/.config/envronment_config
cd $HOME

rm ~/.vim -rf
cp $ENV_PATH/.vim ~/.vim   -rf
cp $ENV_PATH/.vimrc ~/.vimrc -rf 
cp $ENV_PATH/.bashrc ~/.bashrc -rf 
echo "Restore our original config success"
#################Restore end####################
cd $CURPATH
return
fi
