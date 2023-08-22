#!/bin/sh

function getBytes {
    netstat -w1 > ~/.config/sketchybar/plugins/network.out & sleep 1; kill $!
}

BYTES=$(getBytes > /dev/null)
BYTES=$(cat ~/.config/sketchybar/plugins/network.out | grep '[0-9].*')

DOWN=$(echo $BYTES | awk '{print $3}')
UP=$(echo $BYTES | awk '{print $6}')

function human_readable() {
    local abbrevs=(
        $((1 << 60)):ZiB
        $((1 << 50)):EiB
        $((1 << 40)):TiB
        $((1 << 30)):GiB
        $((1 << 20)):MiB
        $((1 << 10)):KiB
        $((1)):B
    )

    local bytes="${1}"
    local precision="${2}"

    for item in "${abbrevs[@]}"; do
        local factor="${item%:*}"
        local abbrev="${item#*:}"
        if [[ "${bytes}" -ge "${factor}" ]]; then
            local size="$(bc -l <<< "${bytes} / ${factor}")"
            printf "%.*f %s\n" "${precision}" "${size}" "${abbrev}"
            break
        fi
    done
}

DOWN_FORMAT=$(human_readable $DOWN 1)
UP_FORMAT=$(human_readable $UP 1)

sketchybar --set network.down label="$DOWN_FORMAT/s" \
	       --set network.up   label="$UP_FORMAT/s"