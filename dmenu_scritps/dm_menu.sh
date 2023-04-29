#!/bin/bash

set -euo pipefail

DMENU="dmenu -i -h 30 -l 10 -p"
list="ls -1 scripts/"

choise="$($list | ${DMENU} "Menu:" "$@")"

if [[ -n $choise ]]; then
    ./scripts/$choise
else
    dunstify "Menu Hub closed"
fi
