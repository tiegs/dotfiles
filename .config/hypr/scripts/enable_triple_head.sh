#!/bin/sh

# This script enables the triple-head setup

screen_left_default="DP-4"
screen_mid_default="DP-5"
screen_right_default="DP-2"

screen_left=$(hyprctl monitors -j | jq -r ".[]|select(.serial==\"HNYRK53\").name")
screen_mid=$(hyprctl monitors -j | jq -r ".[]|select(.serial==\"T4TEE0028502\").name")
screen_right=$(hyprctl monitors -j | jq -r ".[]|select(.serial==\"4R9FT03\").name")

# Needed, as := sets the variable with their respecive default
echo "Left: ${screen_left:=$screen_left_default}"
echo "Center: ${screen_mid:=$screen_mid_default}"
echo "Right: ${screen_right:=$screen_right_default}"

# echo "Enable triple-head setup"
hyprctl keyword monitor $screen_mid,disable              # Acer
hyprctl keyword monitor $screen_left,1920x1080,0x0,1     # Dell left
hyprctl keyword monitor $screen_right,2560x1440,4480x0,1 # Dell right
sleep 1                                                  # Wait for 1 sec for the resolution to settle
hyprctl keyword monitor $screen_mid,2560x1440,1920x0,1   # Acer

echo "Disable mobile screen"
hyprctl keyword monitor eDP-1,disable
