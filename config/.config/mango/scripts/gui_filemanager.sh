#!/usr/bin/env bash
# Toggle nautilus: close if running, open if not
if pgrep -x "nautilus" >/dev/null; then
  pkill -x "nautilus"
else
  setsid nautilus >/dev/null 2>&1 &
  disown
fi
