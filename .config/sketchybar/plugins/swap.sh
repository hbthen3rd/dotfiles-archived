#!/bin/sh

sketchybar --set "$NAME" label=$(echo $(sysctl vm.swapusage) | awk '/vm.swapusage: / { print substr($7, 1, length($7)) }')