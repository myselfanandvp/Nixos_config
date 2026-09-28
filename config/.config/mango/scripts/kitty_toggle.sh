#!/usr/bin/env bash

# Check if kitty with class float-term is running
if pgrep -f "kitty.*float-term" >/dev/null; then
  pkill -f "kitty.*float-term"
else
  kitty --class float-term &
fi
