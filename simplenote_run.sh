#!/bin/bash

if wmctrl -l | grep -P '(^|\s)\KSimplenote' > /dev/null 2>&1
then
  # simplenote running
  #echo "running"
  wmctrl -i -a "$(wmctrl -l | grep -P '(^|\s)\KSimplenote' | cut -d ' ' -f1)"
else
  # simplenote stopped
  #echo "stopped"
  simplenote &
fi

exit
