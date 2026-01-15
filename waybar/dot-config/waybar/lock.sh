#!/bin/bash

if pgrep -x "$(basename "$0")" > /dev/null && [ $(pgrep -xc "$(basename "$0")") -gt 1 ]; then
    exit 1
fi

kitty ~/.config/waybar/shutdown.sh
exit 0