#!/usr/bin/env sh
# i3lock wrapper — plain i3lock, colors only

: "${COLOR_BG:?}"

exec i3lock \
  --color="${COLOR_BG#\#}" \
  "$@"

