#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

source "$HOME/.config/colors.sh" # Loads all defined colors

VOLUME=$INFO

case $VOLUME in
[6-9][0-9] | 100)
	ICON=""
	COLOR=$BRIGHT_MAGENTA
	;;
[3-5][0-9])
	ICON=""
	COLOR=$BRIGHT_MAGENTA
	;;
[1-9] | [1-2][0-9])
	ICON=""
	COLOR=$MAGENTA
	;;
*)
	ICON=""
	COLOR=$MAGENTA
	;;
esac

sketchybar --set $NAME icon="$ICON" \
	icon.color=$COLOR \
	label="$VOLUME%" \
	label.color=$COLOR
