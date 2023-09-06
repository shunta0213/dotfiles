#!/bin/bash

# Terminate already running bar instances
killall -q polybar
while pgrep -u $UID -x polybar > /dev/null;do sleep 1; done

# Launch Polybar
polybar &

echo "Polybar launched..."
