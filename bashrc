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

###########################################################
function git_branch {
  branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
  if [ "${branch}" != "" ];then
      if [ "${branch}" = "(no branch)" ];then
          branch="(`git rev-parse --short HEAD`...)"
      fi
      echo "($branch)"
  fi
}

export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w$(git_branch)\$ '
###########################################################
# some more ls aliases
alias ll='ls -lF'
alias lh='ls -lhF'
alias sl='ls'
alias l='ls -CF'
alias cdh='cd /var/www/html/'
alias cdc='cd /home/rock/chromium/blink_db_2.0'
alias cd2='cd /home/rock/chromium/blink_db_2.0'

alias cdh='cd /home/apache/'
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
alias removeM='sed -i "s/$//g"'


#This is used to patch files.
alias sd='svn diff --diff-cmd mydiff'
alias mdiff='svn diff --diff-cmd melddiff'
alias lines='find ./ -name "*.c" -o -name "*.hpp" -o -name "*.h" -o -name "*.cpp" -o -name "*.java" -type f | xargs cat  | wc -l'
alias AError='/opt/android-ndk-r8e/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64/bin/arm-linux-androideabi-addr2line -C -f -e /home/rock/chromium/blink_db_2.0/blink_core/lib/chromium_org/out/Release/lib/libmttwebview.so'
alias AError3='/opt/android-ndk-r8e/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64/bin/arm-linux-androideabi-addr2line -C -f -e /home/rock/blink_db_3.0/blink_core/lib/chromium_org/out/Default/lib.unstripped/libmttwebview.so'
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

alias tree='tree --charset ASCII'
alias uninstall='adb uninstall com.tencent.mtt'

export LANG="en_US.utf8"
export LC_ALL="en_US.utf8"
export LC_CTYPE="en_US.utf8"
#export XMODIFIERS="@im=fcitx"
#export XIM=fcitx
#export XIM_PROGRAM=fcitx
#export CONFIG=debug
alias killmm='adb shell su -c "am force-stop com.tencent.mm"'
alias killqb='adb shell su -c "am force-stop com.tencent.mtt"'
alias killqq='adb shell su -c "am force-stop com.tencent.mobileqq"'
alias killqz='adb shell su -c "am force-stop com.qzone"'
alias killde='adb shell su -c "am force-stop com.tencent.x5sdk.demo"'
alias pull='adb shell su -c "cp /data/data/com.tencent.x5sdk.demo/app_webview/Dnses /sdcard/" ; adb pull /sdcard/Dnses; sqlitebrowser Dnses'
alias remote='ssh vps -p 28060'
alias rizhao='ssh root@yimiaozhaopin.com'
alias cdt='cd /backup/tbs_dev'
alias cdh='cd /var/www/html/'
alias pic='feh'
gsettings set com.canonical.desktop.interface scrollbar-mode overlay-auto

#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#Android studio ibus config workaround
IBUS_ENABLE_SYNC_MODE=1 ibus-daemon -xrd

export $(dbus-launch)
export PATH=$PATH:/home/rock/Developer/depot_tools

# Python virtualenv configuration.
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace_python
source /usr/local/bin/virtualenvwrapper.sh
export GRADLE_HOME=/opt/gradle-3.3
export PATH=$GRADLE_HOME/bin:$PATH
#export QT_PLUGIN_PATH=$QTDIR/plugins
#export LD_LIBRARY_PATH=$QTDIR/lib
#export QT_QWS_FONTDIR=$QTDIR/lib/fonts
#export QMAKESPEC=$QTDIR/mkspecs/linux-g++

