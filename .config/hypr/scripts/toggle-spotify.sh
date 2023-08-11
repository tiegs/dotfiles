#!/bin/sh
#
# This script toggles the spotify workspace.
# If spotify is not running, it starts is, else it toggles the spotify workspace.
#
# Requires a window rule for spotify to be moved to the respective special workspace, e.g.
# windowrulev2 = workspace special:spotify, class:^(Spotify)$
# bind = CTRL ALT, K, exec, $scriptDir/toggle-spotify.sh

# Name of the process to check
proc_name="spotify"

# Name of the special workspace
ws_name="spotify"

if pidof $proc_name; then
	echo "Process is running ($(pidof $kp_proc))"

	hyprctl dispatch togglespecialworkspace $ws_name
else
	echo "Process not running, starting it now"

	# Command to launch (non-blocking)
	gtk-launch spotify.desktop

	sleep .75

	hyprctl dispatch workspace special:$ws_name
fi
