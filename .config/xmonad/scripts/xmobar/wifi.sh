#!/bin/bash
DEVICE_NAME=$(ip a | awk '/wl*/ {print$2}' | sed 's/.$//' |head -1)
TYPES=($(nmcli device show $DEVICE_NAME | grep "GENERAL.TYPE" | awk '{print $2}'))
STATES=($(nmcli device show $DEVICE_NAME | grep "GENERAL.STATE" | awk '{print $3}'))

ICON="直"
COLOR="#696B71"

if [[ $STATES = "(connected)" ]]; then
	COLOR="#58D68D"
	WIFINAME=($(nmcli device show $DEVICE_NAME | grep "GENERAL.CONNECTION" | awk '{print $2}'))
elif [[ $STATES = "(unavailable)" ]]; then
	COLOR="#E74C3C"
	ICON="睊"
else [[ $STATES = "(disconnected)" ]]
	COLOR="#2980B9"
fi


echo "<fc=$COLOR><fn=4>$ICON</fn></fc>"
#echo "<fc=$COLOR><fn=1>$ICON</fn> $WIFINAME </fc>"


