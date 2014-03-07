# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export PATH=~/.bin:$PATH

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lF'
alias sl='ls'
alias la='ls -A'
alias l='ls -CF'
###########################################################
root=/home/rock/Android.4.0.1_Source/
#root=/home/rock/AML8726/
alias cda='cd ${root}'
alias cdf='cd ${root}frameworks'
alias cdp='cd ~/rockShare'

#alias cdp='cd ${root}android2.3/source/sdk/android/packages/apps/IPTV'
#alias cde='cd ${root}external/iptvkit'
#alias cdf='cd /home/rock/Android.4.0.1_Source/frameworks'
#alias cdi='cd ${root}android2.3/source/sdk/android/packages/ztestb/mcsp/module/cap/browser'
###########################################################
#IP=10.17.161.8
IP=172.18.10.234
alias acon='adb connect ${IP}:5555'
alias adisc='adb disconnect ${IP}:5555'
alias ashell='adisc;acon;adb -s ${IP}:5555 shell'
alias apull='adb -s ${IP}:5555 pull'
alias apush='adb -s ${IP}:5555 push'
###########################################################
alias cdh='cd /var/www/'
alias cdt='cd /home/tftproot/'
alias greps='source /usr/local/bin/greps.sh'

# quick jmp to the target directoies
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

# Working command set.
alias cdw='cd /home/rock/rockShare/JiKuiBu'
alias cdo='cd /home/rock/gitstudy/oschinaApp'
alias cdm='cd /home/rock/WorkdAssure/MobileWorkforceManage'
alias cdc='cd /home/rock/WorkdAssure/MFStorage'
alias cds='cd /home/rock/IandR'

#This is used to patch files.
alias sd='svn diff --diff-cmd mydiff'
alias mdiff='svn diff --diff-cmd melddiff'

alias lines='find ./ -name "*.c" -o -name "*.hpp" -o -name "*.h" -o -name "*.cpp" -o -name "*.java" -type f | xargs cat  | wc -l'
alias AError='prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin/arm-eabi-addr2line -e out/target/product/c03ref/symbols/system/lib/libiptvkit.so'
###########################################################
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Added by rock for qt4.8.2  envrionment.
#export QTDIR=/home/rock/qt_study/qt.4.8.2_install
#export PATH=$QTDIR/bin:$PATH
#export QT_PLUGIN_PATH=$QTDIR/plugins
#export LD_LIBRARY_PATH=$QTDIR/lib
#export QT_QWS_FONTDIR=$QTDIR/lib/fonts
#export QMAKESPEC=$QTDIR/mkspecs/linux-g++

