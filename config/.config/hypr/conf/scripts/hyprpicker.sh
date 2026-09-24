#!/usr/bin/env bash

# Check if hyprpicker is currently running
if pgrep -x "hyprpicker" >/dev/null; then
  pkill -x "hyprpicker"
else
  hyprpicker &
fi
