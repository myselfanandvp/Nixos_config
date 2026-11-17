#!/usr/bin/env bash

# Check if btop is currently running
if pgrep -x "hyprmag" >/dev/null; then
  pkill -x "hyprmag"
else
  hyprmag &
fi
