#!/bin/bash

# This script sets the wallpaper to a random one from the folder
wp_dir=~/Pictures/Wallpapers/Tokyo\ Night/

# params for swww that define the transition
transition_wipe="-t wipe --transition-angle 30 --transition-step 100 --transition-fps 120 --transition-duration 1.5"
transition_fast="-t simple --transition-step 25"

case $1 in
fast)
	find "$wp_dir" | shuf -n 1 | xargs -d '\n' swww img $transition_fast
	;;

*)
	find "$wp_dir" | shuf -n 1 | xargs -d '\n' swww img $transition_wipe
	;;
esac
