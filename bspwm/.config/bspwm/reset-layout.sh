#!/bin/sh

for n in $(bspc query -N); do
  bspc node "$n" -t tiled
done

