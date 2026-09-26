#!/usr/bin/env bash

# Check if Thunar is currently running
if pgrep -x "Thunar" >/dev/null; then
  pkill -x "Thunar"
else
  Thunar &
fi
