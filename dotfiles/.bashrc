#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

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


# export PATH="$PATH:$HOME/.local/bin"
# export PATH="$PATH:$HOME/code/scripts/bin"


# # go
# export GOPATH="$HOME/code/go"
# export GOROOT="/usr/lib/go"
# export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"


# # electron
# export ELECTRON_MIRROR="https://cdn.npm.taobao.org/dist/electron"


# # java
# export JDK_HOME="/usr/lib/jvm/java-11-jdk"
# export JAVA_HOME="/usr/lib/jvm/java-11-jdk"


# # hadoop
# # export HADOOP_INSTALL="$HOME/hadoop"
# # export PATH="$PATH:${HADOOP_INSTALL}/bin:${HADOOP_INSTALL}/sbin"


# # android
# export ANDROID_HOME="$HOME/code/android/sdk"
# export ANDROID_SDK_ROOT="$HOME/code/android/sdk"
# export STUDIO_JDK="$JAVA_HOME"
# export STUDIO_GRADLE_JDK="$JAVA_HOME"


# #dart flutter
# export PATH="$PATH:$HOME/code/flutter/flutter/bin/cache/dart-sdk/bin"
# export PATH="$PATH:$HOME/code/flutter/flutter/bin"
# export TERMINFO=/usr/share/terminfo
# # export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub
# # export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter
# # export PUB_HOSTED_URL=https://pub.flutter-io.cn
# # export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
# export PUB_HOSTED_URL=https://mirrors.sjtug.sjtu.edu.cn/dart-pub
# export FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn
# export CHROME_EXECUTABLE=google-chrome-stable


# # rustup
# export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
# export PATH="$HOME/.cargo/bin/:$PATH"


# # qt
# # export QT_PLUGIN_PATH=/opt/anaconda/plugins
# export QT_DEBUG_PLUGINS=1


# # jfx
# export PATH_TO_FX="$HOME/code/jfx/javafx-sdk-15.0.1/lib"


# # volta
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"


# # dotnet
# export DOTNET_ROOT="$HOME/.dotnet"
# export PATH="$PATH:$DOTNET_ROOT"


#source "$HOME/.kotlin-native/kotlin-native.sh"
#export PATH="$HOME/.kotlin-native/versions/v1.4.20/bin:$PATH"


export NO_PROXY=localhost,127.0.0.1
proxy () {
  export http_proxy="socks5://127.0.0.1:17891"
  export https_proxy="socks5://127.0.0.1:17891"
  echo "HTTP Proxy on"
}
proxyoff () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}
