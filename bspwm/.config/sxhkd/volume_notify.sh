#!/usr/bin/env bash

STEP=2%
SINK="@DEFAULT_SINK@"
TIMEOUT=700   # milliseconds


case "$1" in
	up)   pactl set-sink-volume "$SINK" +$STEP ;;
	down) pactl set-sink-volume "$SINK" -$STEP ;;
	mute) pactl set-sink-mute "$SINK" toggle ;;
esac

VOL=$(pactl get-sink-volume "$SINK" | awk '{print $5}' | head -n1)
MUTE=$(pactl get-sink-mute "$SINK" | awk '{print $2}')


if [ "$MUTE" = "yes" ]; then
  dunstify -r 999 -t "$TIMEOUT" "Volume" "Muted"
else
  dunstify -r 999 -t "$TIMEOUT" "Volume" "$VOL"
fi

