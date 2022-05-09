export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="agnoster"


plugins=(
  git
  bundler
  sudo
  pip
  extract
  z
  wd
  vi-mode
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
  history-substring-search
  archlinux
  git-open
)


source $ZSH/oh-my-zsh.sh


alias l="exa -lhbgSH --time-style=long-iso --git --icons"
alias la="exa -lhbgSHa --time-style=long-iso --git --icons"
alias c="clear"
alias r="ranger"

alias .rb="systemctl reboot"
alias .sd="systemctl poweroff"
alias .sp="systemctl hybrid-sleep"

alias nf="neofetch"
alias -s html='code'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias wttr="curl wttr.in/shuangliu"
alias pandoc_pdf="pandoc --pdf-engine=xelatex -V 'mainfont=SimSun'"


export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export XMODIFIERS=@im=fcitx5
export XIM_SERVERS=fcitx5
export GTK_IM_MODULE=fcitx5
export QT4_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS="@im=fcitx5"


export EDITOR=/bin/nvim
export TERMINFO=/usr/share/terminfo
export XDG_CONFIG_HOME="$HOME/.config"


export CC=/usr/bin/clang
export CXX=/usr/bin/clang++


export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/dev/scripts/bin"


# go
export GOPATH="$HOME/dev/go"
export GOROOT="/usr/lib/go"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"


# java
export JDK_HOME=/usr/lib/jvm/default
export JAVA_HOME=/usr/lib/jvm/default
export _JAVA_AWT_WM_NONREPARENTING=1


# hadoop
# export HADOOP_INSTALL="$HOME/hadoop"
# export PATH="$PATH:${HADOOP_INSTALL}/bin:${HADOOP_INSTALL}/sbin"


# jfx
# export PATH_TO_FX="$HOME/dev/jfx/javafx-sdk-15.0.1/lib"


# android
export ANDROID_HOME=$HOME/dev/android/sdk
export ANDROID_SDK_ROOT=$HOME/dev/android/sdk
export STUDIO_JDK=/usr/lib/jvm/java-11-jdk/
export STUDIO_GRADLE_JDK=$JAVA_HOME


# flutter
export PATH=$PATH:$HOME/dev/flutter/flutter/bin/cache/dart-sdk/bin
export PATH=$PATH:$HOME/dev/flutter/flutter/bin
export PUB_HOSTED_URL=https://mirrors.sjtug.sjtu.edu.cn/dart-pub
export FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn
export CHROME_EXECUTABLE=google-chrome-stable


# rustup
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export PATH="$HOME/.cargo/bin/:$PATH"


# dotnet
# export DOTNET_ROOT="$HOME/.dotnet"
# export PATH="$PATH:$DOTNET_ROOT"


# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


# electron
export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"
export ELECTRON_CUSTOM_DIR="v{{ version }}"


# lua
# export PATH="$PATH:$HOME/.luarocks/bin"


# kotlin-native
# source "$HOME/.kotlin-native/kotlin-native.sh"
# export PATH="$HOME/.kotlin-native/versions/v1.4.20/bin:$PATH"


# qt
export QT_DEBUG_PLUGINS=1


# cocos
# export COCOS_CONSOLE_ROOT="$HOME/dev/game/cocos/cocos2d-x-4.0/tools/cocos2d-console/bin"
# export PATH=$COCOS_CONSOLE_ROOT:$PATH
# export COCOS_X_ROOT="$HOME/dev/game/cocos"
# export PATH=$COCOS_X_ROOT:$PATH
# export COCOS_TEMPLATES_ROOT="$HOME/dev/game/cocos/cocos2d-x-4.0/templates"
# export PATH=$COCOS_TEMPLATES_ROOT:$PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/dev/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "$HOME/dev/miniconda3/etc/profile.d/conda.sh" ]; then
    . "$HOME/dev/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="$HOME/dev/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NO_PROXY="localhost,127.0.0.1,::1"
proxy() {
  export http_proxy="http://127.0.0.1:9981"
  export https_proxy="http://127.0.0.1:9981"
  echo "HTTP Proxy on"
}
proxyoff() {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}

