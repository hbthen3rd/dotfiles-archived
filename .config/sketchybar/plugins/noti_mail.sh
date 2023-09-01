#!/bin/sh

STATUS_LABEL=$(lsappinfo info -only StatusLabel "Mail")
LABEL=""

if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"
fi

if [[ $LABEL == "" ]];
then
  sketchybar --set $NAME label.drawing=off    \
                         icon.padding_left=4  \
                         icon.padding_right=4
else
  sketchybar --set $NAME label="${LABEL}"     \
                         label.drawing=on     \
                         icon.padding_left=6  \
                         icon.padding_right=2
fi
