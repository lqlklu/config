#!/bin/env bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

sudo cp "$SCRIPTPATH/30-touchpad.conf" /etc/X11/xorg.conf.d/30-touchpad.conf

