#!/bin/bash

set -euo pipefail

DMENU="dmenu -i -h 30 -l 10 -p"
list="ls -1 /home/kenaya/.config/dmenu/dmenu_scripts/scripts/"

choise="$($list | ${DMENU} "Menu:" "$@")"

if [[ -n $choise ]]; then
    sh /home/kenaya/.config/dmenu/dmenu_scripts/scripts/$choise
else
    dunstify "Menu Hub closed"
fi
