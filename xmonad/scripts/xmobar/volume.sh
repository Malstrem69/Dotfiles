#!/bin/bash
# font awesome 5 free solid
MUTE=$(pulseaudio-ctl full-status | awk '{print $2}')
VOLUME=$(pulseaudio-ctl full-status | awk '{print $1}')

if [ "$MUTE" = "yes" ]; then
    echo "<fc=#696B71><fn=2></fn></fc> "
elif [ "$VOLUME" -eq 0 ]; then
    echo "<fc=#696B71><fn=2></fn></fc>   "
elif [ "$VOLUME" -lt 80 ]; then
    echo "<fc=#DFDFDF><fn=2></fn></fc>  "
else
    echo "<fc=#ff79c6><fn=2></fn></fc>"
fi

