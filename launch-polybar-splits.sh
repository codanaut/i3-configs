#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Middle Screen 
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini top-left &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini top-middle &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini top-right &

# Middle Bottom
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini bottom-left &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini bottom-middle &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini bottom-right &

# Left Screen
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini left-top-left &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini left-top-middle &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini left-top-right &

# Left Bottom
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini left-bottom-left &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini left-bottom-middle &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini left-bottom-right &

# Right Screen
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini right-top-left &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini right-top-middle &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini right-top-right &

# Right Bottom
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini right-bottom-left &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini right-bottom-middle &
polybar -r --config=~/Git/Gitlab/i3-configs/polybar-test.ini right-bottom-right &