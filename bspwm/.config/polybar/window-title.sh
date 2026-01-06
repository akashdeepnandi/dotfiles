#!/bin/sh

# get focused window id
wid=$(bspc query -N -n focused)

# get window title
title=$(xprop -id "$wid" _NET_WM_NAME 2>/dev/null \
  | sed -n 's/^.*= "\(.*\)"$/\1/p')

# fallback if title is empty
[ -z "$wid" ] || [ -z "$title" ] && title="bspwm"

class=$(xprop -id "$wid" WM_CLASS 2>/dev/null \
  | sed -n 's/.*= "\(.*\)",.*/\1/p' | tr '[:upper:]' '[:lower:]')

icons="$HOME/.config/polybar/window-title-icons.csv"

# try to match class against patterns
icon=$(awk -F',' -v cls="$class" '
  tolower($1)!="default" && cls ~ tolower($1) { print $2; exit }
' "$icons")

# fallback to Default
[ -z "$icon" ] && icon=$(awk -F',' 'tolower($1)=="default"{print $2}' "$icons")


max_len=25
orig="$title"

if [ "${#orig}" -gt "$max_len" ]; then
  title="$(printf "%.${max_len}s" "$orig")..."
else
  title="$(printf "%-${max_len}s" "$orig")"
fi



echo "$icon $title"


