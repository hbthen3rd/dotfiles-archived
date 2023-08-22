#!/bin/sh

sketchybar --set $NAME label="$(df -H | grep -E '^(/dev/disk3s1).' | awk '{ printf ("%s\n", $5) }')"
