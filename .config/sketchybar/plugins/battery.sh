#!/bin/sh

source "$HOME/.config/colors.sh"
source "$HOME/.config/icons.sh"

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
IS_CHARGING=$(pmset -g batt | grep 'AC Power')

if [[ $IS_CHARGING == "" ]]; then
	case ${BATT_PERCENT} in
	100)
		ICON=${ICONS_BATTERY[10]}
		COLOR=$COLOR_GREEN_BRIGHT
		;;
	9[0-9])
		ICON=${ICONS_BATTERY[9]}
		COLOR=$COLOR_GREEN_BRIGHT
		;;
	8[0-9])
		ICON=${ICONS_BATTERY[8]}
		COLOR=$COLOR_GREEN
		;;
	7[0-9])
		ICON=${ICONS_BATTERY[7]}
		COLOR=$COLOR_YELLOW_BRIGHT
		;;
	6[0-9])
		ICON=${ICONS_BATTERY[6]}
		COLOR=$COLOR_YELLOW_BRIGHT
		;;
	5[0-9])
		ICON=${ICONS_BATTERY[5]}
		COLOR=$COLOR_YELLOW
		;;
	4[0-9])
		ICON=${ICONS_BATTERY[4]}
		COLOR=$COLOR_YELLOW
		;;
	3[0-9])
		ICON=${ICONS_BATTERY[3]}
		COLOR=$COLOR_YELLOW
		;;
	2[0-9])
		ICON=${ICONS_BATTERY[2]}
		COLOR=$COLOR_RED_BRIGHT
		;;
	1[0-9])
		ICON=${ICONS_BATTERY[1]}
		COLOR=$COLOR_RED
		;;
	*)
		ICON=${ICONS_BATTERY[0]}
		COLOR=$COLOR_RED
		;;
	esac
else
	case ${BATT_PERCENT} in
	100)
		ICON=${ICONS_BATTERY_CHARGING[10]}
		;;
	9[0-9])
		ICON=${ICONS_BATTERY_CHARGING[9]}
		;;
	8[0-9])
		ICON=${ICONS_BATTERY_CHARGING[8]}
		;;
	7[0-9])
		ICON=${ICONS_BATTERY_CHARGING[7]}
		;;
	6[0-9])
		ICON=${ICONS_BATTERY_CHARGING[6]}
		;;
	5[0-9])
		ICON=${ICONS_BATTERY_CHARGING[5]}
		;;
	4[0-9])
		ICON=${ICONS_BATTERY_CHARGING[4]}
		;;
	3[0-9])
		ICON=${ICONS_BATTERY_CHARGING[3]}
		;;
	2[0-9])
		ICON=${ICONS_BATTERY_CHARGING[2]}
		;;
	1[0-9])
		ICON=${ICONS_BATTERY_CHARGING[1]}
		;;
	*)
		ICON=${ICONS_BATTERY_CHARGING[0]}
		;;
	esac
	COLOR=$COLOR_GREEN_BRIGHT
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set $NAME icon=$ICON \
	icon.color=$COLOR \
	label="${BATT_PERCENT}%" \
	label.color=$COLOR
