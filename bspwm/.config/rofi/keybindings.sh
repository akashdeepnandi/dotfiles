#!/usr/bin/env bash

PARSER="$HOME/.config/sxhkd/keybindings-parser.sh"

"$PARSER" | sed -E '
s/(CORE)$/<span foreground="#f38ba8">\1<\/span>/;
s/(LAUNCHERS)$/<span foreground="#a6e3a1">\1<\/span>/;
s/(WINDOW MANAGEMENT)$/<span foreground="#89b4fa">\1<\/span>/;
s/(UTILITIES)$/<span foreground="#f9e2af">\1<\/span>/;
s/([A-Z ]+)$/<span foreground="#cdd6f4">\1<\/span>/
' | rofi -dmenu -i -p "Keybindings" -markup-rows

