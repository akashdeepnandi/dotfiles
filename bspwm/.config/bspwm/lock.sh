#!/usr/bin/env sh

IG=/tmp/lock.png
BLUR=${BLUR:-16}   # increase/decrease blur (e.g. 4, 8, 12, 16)

scrot "$IMG"
convert "$IMG" -blur 0x"$BLUR" "$IMG"
i3lock -i "$IMG"

