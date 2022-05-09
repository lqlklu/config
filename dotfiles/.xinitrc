#!/bin/sh

export XXX_XINITRC="ENABLE"


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# start some nice programs
# /usr/bin/setxkbmap -option caps:swapescape

numlockx &

wmname LG3D &

twm &
xclock -geometry 50x50-1+1 &
xterm -geometry 80x50+494+51 &
xterm -geometry 80x20+494-0 &
exec xterm -geometry 80x66+0+0 -name login


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

export TERMINFO=/usr/share/terminfo

export XDG_CONFIG_HOME="$HOME/.config"
