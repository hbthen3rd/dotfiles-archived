#!/bin/sh

source "$HOME/.config/icons.sh"

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

sketchybar --set $NAME background.drawing=$SELECTED \
	icon.highlight=$SELECTED \
	label.highlight=$SELECTED

if [[ $SENDER == "front_app_switched" || $SENDER == "window_change" ]];
then
 for i in "${!ICONS_SPACE[@]}"
 do
   sid=$(($i+1))
   LABEL=""
 
   QUERY=$(yabai -m query --windows --space $sid)
   APPS=$(echo $QUERY | jq '.[].app')
   TITLES=$(echo $QUERY | jq '.[].title')
 
   if grep -q "\"" <<< $APPS;
   then
     APPS_ARR=()
     while read -r line; do APPS_ARR+=("$line"); done <<< "$APPS"
     TITLES_ARR=()
     while read -r line; do TITLES_ARR+=("$line"); done <<< "$TITLES"
 
     LENGTH=${#APPS_ARR[@]}
     for j in "${!APPS_ARR[@]}"
     do
       APP=$(echo ${APPS_ARR[j]} | sed 's/"//g')
       TITLE=$(echo ${TITLES_ARR[j]} | sed 's/"//g')
 
       ICON=$($HOME/.config/sketchybar/plugins/app_icon.sh "$APP" "$TITLE")
       LABEL+="$ICON"
       if [[ $j < $(($LENGTH-1)) ]]; then
         LABEL+=" "
       fi
     done
   else
     LABEL+="_"
   fi
 
   sketchybar --set space.$sid label="$LABEL"
 done
fi
