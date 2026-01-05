#!/bin/sh

# kill only polybar processes, never the shell
pkill -x polybar || true

# give X a moment to release resources
sleep 0.2

for m in $(polybar --list-monitors | cut -d: -f1); do
  MONITOR=$m polybar main &
done

