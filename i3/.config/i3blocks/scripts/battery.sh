#!/bin/dash

BAT_PATH="/sys/class/power_supply/BAT0"

# read battery capacity
if [ -f "$BAT_PATH/capacity" ]; then
  percent=$(cat "$BAT_PATH/capacity")
  status=$(cat "$BAT_PATH/status")
else
  echo "Battery info unavailable"
fi

color="#eceff4"

# distinguish among battery conditions:
# "Charging", "Not charging", "Discharging"
if [ "$status" = "Discharging" ]; then
  if [ "$percent" -ge 90 ]; then
    icon="󰁹"
  elif [ "$percent" -ge 80 ]; then
    icon="󰂂"
  elif [ "$percent" -ge 70 ]; then
    icon="󰂁"
  elif [ "$percent" -ge 60 ]; then
    icon="󰂀"
  elif [ "$percent" -ge 50 ]; then
    icon="󰁿"
  elif [ "$percent" -ge 40 ]; then
    icon="󰁾"
  elif [ "$percent" -ge 30 ]; then
    icon="󰁽"
  elif [ "$percent" -ge 20 ]; then
    icon="󰁼"
    color="#ebcb8b"
  elif [ "$percent" -ge 10 ]; then
    icon="󰁻"
    color="#d08770"
  else
    icon="󰁺"
    color="#bf616a"
  fi
elif [ "$status" = "Charging" ]; then
  if [ "$percent" -ge 90 ]; then
    icon="󰂅 "
  elif [ "$percent" -ge 80 ]; then
    icon="󰂋 "
  elif [ "$percent" -ge 70 ]; then
    icon="󰂊 "
  elif [ "$percent" -ge 60 ]; then
    icon="󰢞 "
  elif [ "$percent" -ge 50 ]; then
    icon="󰂉 "
  elif [ "$percent" -ge 40 ]; then
    icon="󰢝 "
  elif [ "$percent" -ge 30 ]; then
    icon="󰂈 "
  elif [ "$percent" -ge 20 ]; then
    icon="󰂇 "
  elif [ "$percent" -ge 10 ]; then
    icon="󰂆 "
  else
    icon="󰢜 "
  fi
elif [ "$status" = "Not charging" ]; then
  icon="󰂅 "
fi

output=" $icon $percent% "

echo "$output"
echo "$output"
echo "$color"
