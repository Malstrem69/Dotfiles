#!/bin/bash

#That script using "acpi" metrics to display power information
STATUS=($(acpi | awk '{print substr($3, 0, length($3)-1)}'))
# Discharging Full Charging
POWERLEVEL=($(acpi | awk '{print substr($4, 0, length($4)-2)}'))
ICON=""
CHAR_COLOR="#5DADE2"
FULL_COLOR="#27AE60"
DIS_COLOR="#F8C471"
COLOR="#27AE60"

case $STATUS in

    Discharging)
        if [[ $POWERLEVEL = 100 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 90 && $POWERLEVEL -le 99 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 80 && $POWERLEVEL -le 89 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 70 && $POWERLEVEL -le 79 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 60 && $POWERLEVEL -le 69 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 50 && $POWERLEVEL -le 59 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 40 && $POWERLEVEL -le 49 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 30 && $POWERLEVEL -le 39 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 20 && $POWERLEVEL -le 29 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 10 && $POWERLEVEL -le 19 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 0 && $POWERLEVEL -le 9 ]]; then
            COLOR=$DIS_COLOR
            ICON=""
            dunstify -u critical 'battery running out!'
        fi
        ;;
    Full)
        COLOR="$FULL_COLOR"
        ICON=""
        ;;
    Charging)
        if [[ $POWERLEVEL -eq 100 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 90 && $POWERLEVEL -le 99 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 80 && $POWERLEVEL -le 89 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 70 && $POWERLEVEL -le 79 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 60 && $POWERLEVEL -le 69 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 50 && $POWERLEVEL -le 59 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 40 && $POWERLEVEL -le 49 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 30 && $POWERLEVEL -le 39 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 20 && $POWERLEVEL -le 29 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 10 && $POWERLEVEL -le 19 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        elif [[ $POWERLEVEL -ge 1 && $POWERLEVEL -le 9 ]]; then
            COLOR=$CHAR_COLOR
            ICON=""
        fi
        ;;

esac

echo "<fc=$COLOR><fn=6>$ICON</fn></fc>"
