#!/usr/bin/env bash

if pgrep -f "niri msg pick-color" >/dev/null; then
  pkill -f "niri msg pick-color"
else
  kitty sh -c 'niri msg pick-color'
fi
