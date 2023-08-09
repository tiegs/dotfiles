#!/bin/sh
#
# This script toggles the keepass workspace.
# If keepass is not running, it starts is, else it toggles the keepass workspace.
#
# Requires a window rule for keepass to be moved to the respective special workspace, e.g.
# windowrulev2 = workspace special:keepass, class:^(org\.keepassxc\.KeePassXC)$
# bind = CTRL ALT, K, exec, $scriptDir/toggle-keepass.sh

# Name of the keepass process to check
kp_proc="keepassxc"

# Name of the keepass workspace
ws_name="keepass"

if pidof $kp_proc; then
	echo "Keepass running ($(pidof $kp_proc))"

	hyprctl dispatch togglespecialworkspace keepass
else
	echo "Keepass not running, starting it now"

	# Command to launch Keepass (non-blocking)
	gtk-launch org.keepassxc.KeePassXC.desktop

	sleep 1

	hyprctl dispatch workspace special:keepass
fi
