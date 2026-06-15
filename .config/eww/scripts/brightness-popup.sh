#!/bin/bash

# Variables (Eww settings ke hisab se)
POPUP_NAME="brightness_popup"  # Aapke eww.yuck me jo window name hai
TIMEOUT=2                      # Kitne seconds baad close hoga
PID_FILE="/tmp/eww_brightness_popup.pid"

# Function to close popup
close_popup() {
    eww close "$POPUP_NAME"
    rm -f "$PID_FILE"
}

# Kill older timer process if running
if [ -f "$PID_FILE" ]; then
    old_pid=$(cat "$PID_FILE")
    kill "$old_pid" 2>/dev/null
fi

# Open popup if not already active
if ! eww active-windows | grep -q "$POPUP_NAME"; then
    eww open "$POPUP_NAME"
fi

# Start new background timeout timer
(
    sleep "$TIMEOUT"
    close_popup
) &

# Save the current background process PID
echo $! > "$PID_FILE"

