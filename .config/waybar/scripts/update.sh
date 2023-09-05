#!/bin/bash

# Run updates
/usr/bin/eos-update

# Update waybar
pkill -RTMIN+1 waybar

# Keep window open until any keypress
read -p 'All done!'
