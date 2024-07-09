#!/bin/bash

# This script is used to launch and restart polybar together with i3

# Terminate already running bar instances
killall -q polybar

# Lauch polybar, using default config location ~/.config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
