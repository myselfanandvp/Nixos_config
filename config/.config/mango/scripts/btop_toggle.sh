#!/usr/bin/env bash

# Check if btop is currently running
if pgrep -x "btop" >/dev/null; then
  pkill -x "btop"
else
  kitty --class="btop-float" -e btop &
fi
