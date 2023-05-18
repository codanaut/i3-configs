#!/bin/bash

# Define the file path variable
polybar_config=~/Git/Gitlab/i3-configs/polybar-colors.ini

# Terminate already running bar instances
killall -q polybar

# Middle Screen 
polybar -r --config="$polybar_config" top-left &
polybar -r --config="$polybar_config" top-middle &
polybar -r --config="$polybar_config" top-right &

# Middle Bottom
polybar -r --config="$polybar_config" bottom-left &
polybar -r --config="$polybar_config" bottom-middle &
polybar -r --config="$polybar_config" bottom-right &

# Left Screen
polybar -r --config="$polybar_config" left-top-left &
polybar -r --config="$polybar_config" left-top-middle &
polybar -r --config="$polybar_config" left-top-right &

# Left Bottom
polybar -r --config="$polybar_config" left-bottom-left &
polybar -r --config="$polybar_config" left-bottom-middle &
polybar -r --config="$polybar_config" left-bottom-right &

# Right Screen
polybar -r --config="$polybar_config" right-top-left &
polybar -r --config="$polybar_config" right-top-middle &
polybar -r --config="$polybar_config" right-top-right &

# Right Bottom
polybar -r --config="$polybar_config" right-bottom-left &
polybar -r --config="$polybar_config" right-bottom-middle &
polybar -r --config="$polybar_config" right-bottom-right &
