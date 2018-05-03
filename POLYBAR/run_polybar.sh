##!/bin/sh

#killall polybar
#polybar traybar -c ~/.polybar &
#polybar topbar1 -c ~/.polybar &
#polybar topbar2 -c ~/.polybar &
#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#polybar base &
  polybar --reload base -c ~/.polybar  &
  polybar -c ~/.polybar --reload traybar &

