#!/bin/sh

IS_ACTIVE=$(timew get dom.active)

if [[ $IS_ACTIVE == 0 ]]; then
  sketchybar --set $NAME label.drawing=off    \
                         icon.padding_left=4  \
                         icon.padding_right=4
else
	HAS_TAGS=$(timew get dom.active.tag.count)

	if [[ $HAS_TAGS == 0 ]]; then
    LABEL="•"
	else
		TAGS=$(timew get dom.active.json | jq -r '.tags[]')
    TAGS_ARR=()
    while read -r line; do TAGS_ARR+=("$line"); done <<< "$TAGS"
    DELIM=""
    LABEL=""
    for TAG in "${TAGS_ARR[@]}";
    do
      LABEL="$LABEL$DELIM$TAG"
      DELIM=", "
    done
    LABEL=$(echo "$LABEL" | cut -c 1-25)
	fi

  sketchybar --set $NAME label="${LABEL}"     \
                         label.drawing=on     \
                         icon.padding_left=6  \
                         icon.padding_right=2
fi
