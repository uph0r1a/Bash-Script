#!/bin/bash

MORNING=""
AFTERNOON=""
NIGHT=""

while true; do
    HOUR=$(date +"%H")

    if [ "$HOUR" -ge 5 ] && [ "$HOUR" -lt 12 ]; then
        WALLPAPER="$MORNING"
        NEXT_HOUR=12

    elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 18 ]; then
        WALLPAPER="$AFTERNOON"
        NEXT_HOUR=18

    else
        WALLPAPER="$NIGHT"
        NEXT_HOUR=5
    fi

    caelestia wallpaper -f "$WALLPAPER" || caelestia wallpaper -r

    CURRENT_MINUTE=$(date +"%M")
    CURRENT_SECOND=$(date +"%S")

    if [ "$NEXT_HOUR" -eq 5 ]; then
        HOURS_LEFT=$((24 - 10#$HOUR + 5))
    else
        HOURS_LEFT=$((NEXT_HOUR - 10#$HOUR))
    fi

    SECONDS_LEFT=$((HOURS_LEFT * 3600 - 10#$CURRENT_MINUTE * 60 - 10#$CURRENT_SECOND))

    sleep "$SECONDS_LEFT"
done