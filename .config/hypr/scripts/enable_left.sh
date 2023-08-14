#!/bin/sh

# This script enables the two left screens
screen_left_default="DP-2"
screen_mid_default="DP-3"

screen_left=$(hyprctl monitors -j | jq -r ".[]|select(.serial==\"HNYRK53\").name")
screen_mid=$(hyprctl monitors -j | jq -r ".[]|select(.serial==\"T4TEE0028502\").name")

# Needed, as := sets the variable with their respecive default
echo "Left: ${screen_left:=$screen_left_default}"
echo "Center: ${screen_mid:=$screen_mid_default}"

echo "Enable dual-head setup"
hyprctl keyword monitor $screen_left,2560x1440,0x0,1   # Dell left
hyprctl keyword monitor $screen_mid,2560x1440,2560x0,1 # Acer

echo "Disable mobile screen"
hyprctl keyword monitor eDP-1,disable
