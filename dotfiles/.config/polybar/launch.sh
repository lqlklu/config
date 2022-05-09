#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITORS=$(xrandr --query | grep " connected" | cut -d" " -f1)

# MONITORS=$MONITORS polybar top &


MONITORS=$MONITORS polybar example &


echo "Polybar launched..."
