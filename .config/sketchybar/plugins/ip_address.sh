#!/bin/sh

source "$HOME/.config/colors.sh"
source "$HOME/.config/icons.sh"

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
	COLOR=$COLOR_CYAN
	ICON=$ICON_VPN
	LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
	COLOR=$COLOR_BLUE
	ICON=$ICON_WIFI
	LABEL=$IP_ADDRESS
else
	COLOR=$COLOR_WHITE
	ICON=$ICON_WIFI_OFF
	LABEL="Not Connected"
fi

sketchybar --set $NAME background.color=$COLOR \
	icon=$ICON \
	label="$LABEL"
