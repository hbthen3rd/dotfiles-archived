#!/bin/sh

source "$HOME/.config/colors.sh" # Loads all defined colors

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
IS_CHARGING=$(pmset -g batt | grep 'AC Power')

case ${BATT_PERCENT} in
100)
	ICON=""
	COLOR=$BRIGHT_GREEN
	;;
9[0-9])
	ICON=""
	COLOR=$BRIGHT_GREEN
	;;
8[0-9])
	ICON=""
	COLOR=$GREEN
	;;
7[0-9])
	ICON=""
	COLOR=$BRIGHT_YELLOW
	;;
6[0-9])
	ICON=""
	COLOR=$YELLOW
	;;
5[0-9])
	ICON=""
	COLOR=$YELLOW
	;;
4[0-9])
	ICON=""
	COLOR=$YELLOW
	;;
3[0-9])
	ICON=""
	COLOR=$YELLOW
	;;
2[0-9])
	ICON=""
	COLOR=$BRIGHT_RED
	;;
1[0-9])
	ICON=""
	COLOR=$RED
	;;
*)
	ICON=""
	COLOR=$RED
	;;
esac

if [[ $IS_CHARGING != "" ]]; then
	ICON=""
	COLOR=$BRIGHT_GREEN
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set $NAME icon=$ICON \
	icon.color=$COLOR \
	label="${BATT_PERCENT}%" \
	label.color=$COLOR \
