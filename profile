# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
export LANG="zh_CN.UTF-8"
#Added by rock.
export PATH=/opt/android-sdk-linux_x86/tools:/opt/android-sdk-linux_x86/platform-tools:$PATH
export PATH=/home/rock/android_src/out/host/linux-x86/bin:/opt/jdk1.5.0_07/bin:$PATH:/opt/sourcenav/bin:/home/rock/SofteWare_Android/bin

#export envirement variable for android.
export ANDROID_PRODUCT_OUT=/home/rock/android_src/out/target/product/generic
export ANDROID_SWT=/home/rock/android_src/out/host/linux-x86/framework

export GST_ID3_TAG_ENCODING=GBK:UTF-8:GB18030
export GST_ID3V2_TAG_ENCODING=GBK:UTF-8:GB18030
