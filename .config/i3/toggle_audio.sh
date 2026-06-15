#!/bin/bash

# Pehle check karte hain ki kya ZEB-THUNDER active (star '*' ke sath) hai
if wpctl status | grep -E "\*\s+.*ZEB-THUNDER" > /dev/null; then
    # Agar bluetooth active hai, toh built-in speaker (56) par switch karo
    wpctl set-default 56
    notify-send -t 2000 "Audio Output" "Switched to Speakers"
else
    # Agar bluetooth active nahi hai, toh use (231) par switch karo
    wpctl set-default 231
    notify-send -t 2000 "Audio Output" "Switched to ZEB-THUNDER"
fi

