#!/bin/sh

# This script enables the two left screens

echo "Disable mobile screen"
hyprctl keyword monitor eDP-1,1920x1080,2560x1440,1
