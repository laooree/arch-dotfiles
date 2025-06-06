#!/bin/bash

wifi_info=$(nmcli -t -f ACTIVE,SSID,SIGNAL dev wifi | grep "^yes:")

if [ -z "$wifi_info" ]; then
  output="󰤮  Disconnected"
  color="#4c566a"
else
  IFS=':' read -r _ ssid signal <<< "$wifi_info"

  output="   ($signal%) $ssid "
  color="#eceff4"
fi

echo "$output"
echo "$output"
echo "$color"
