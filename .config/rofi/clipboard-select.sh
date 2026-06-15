#!/usr/bin/env bash

# Fetch greenclip history, pipe to rofi, and print selection
chosen=$(rofi -dmenu -i -p "📋 Clipboard" -config ~/.config/rofi/launchers/type-6/style-1.rasi)

# If an item was selected, pipe it back to greenclip to set active clipboard
if [ -n "$chosen" ]; then
    echo "$chosen" | xargs -0 greenclip print
fi

