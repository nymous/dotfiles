#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# polybar default &
# xrandr -q | grep HDMI-1 && polybar secondscreen &

if xrandr -q | grep HDMI-1-1 | grep -v disconnected; then
  polybar firstscreen &
  polybar secondscreen &
else
  polybar default &
fi
