#!/bin/bash
# Change brightness

bright_lvl="$(xbacklight -get)"

dunstify -u low -h int:value:"$bright_lvl" "Brightness:"
