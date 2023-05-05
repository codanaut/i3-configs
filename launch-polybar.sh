
# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -r --config=~/Git/Gitlab/i3-configs/polybar-top.ini &
    MONITOR=$m polybar -r --config=~/Git/Gitlab/i3-configs/polybar-bottom.ini &
  done
else
  polybar -r --config=~/Git/Gitlab/i3-configs/polybar.ini &
  MONITOR=$m polybar -r --config=~/Git/Gitlab/i3-configs/polybar-bottom.ini &
fi