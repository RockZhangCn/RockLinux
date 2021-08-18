# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export PATH=~/.bin:/opt/gradle-3.3/bin:$PATH
export ZSH=/home/rock/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias lh='ls -lhF'
alias ll='ls -l'
alias vi='vim'
alias uninstall='adb uninstall com.vivo.browser'
alias remote='ssh -p 26385 rock@love.rockzhang.com'


#alias cdr='cd /home/rock/chromium/blink_db_3.0_release_forrom_dev'
alias cdl='cd /home/rock/log'
# quick jmp to the target directoies
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

alias cdq='cd /home/rock/data/linux_x86_chromium/src'

alias removeM='sed -i "s/$//g"'
alias sd='svn diff --diff-cmd mydiff'
alias mdiff='svn diff --diff-cmd melddiff'

alias lines='find ./ -name "*.c" -o -name "*.hpp" -o -name "*.h" -o -name "*.cpp" -o -name "*.java" -type f | xargs cat  | wc -l'
alias AError='/opt/android-ndk-r8e/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64/bin/arm-linux-androideabi-addr2line -C -f -e /home/rock/chromium/blink_db_2.0/blink_core/lib/chromium_org/out/Release/lib/libmttwebview.so'
alias AError3='/opt/android-ndk-r8e/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64/bin/arm-linux-androideabi-addr2line -C -f -e /home/rock/blink_db_3.0/blink_core/lib/chromium_org/out/Default/lib.unstripped/libmttwebview.so'

#export CONFIG=debug
export PATH=$PATH:/home/rock/chromium/__ForDB_merge_QB_TBS_BLINK/QQBrowser_X5_CORE_TBS/lib/chromium_org/third_party/depot_tools
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
export PATH=$PATH:/home/rock/Developer/depot_tools

# Python virtualenv configuration.
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace_python
source /usr/local/bin/virtualenvwrapper.sh
export GRADLE_HOME=/opt/gradle-3.3
export PATH=$GRADLE_HOME/bin:$PATH
