#!/usr/bin/env bash

awk '
/^# \[/ {
	line=$0
	sub(/^# \[/, "", line)
	split(line, a, "] ")
	group=a[1]
	title=a[2]
}

/^# desc:/ {
	getline
	printf "%-25s  %-30s  %s\n", title, $0, group
}
' "${1:-$HOME/.config/sxhkd/sxhkdrc}"

