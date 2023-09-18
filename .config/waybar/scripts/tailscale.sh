#!/bin/bash

ts_bin="/usr/bin/tailscale"
jq_bin="/usr/bin/jq -r"

status=$($ts_bin status --self --peers=false --json)
# echo $status

status_txt=$($ts_bin status --peers=false)
# printf "%q" "$status_txt"

svc_state=$(echo $status | $jq_bin ".BackendState")
# echo $svc_state

online=$(echo $status | $jq_bin ".Self.Online")
# echo $conn_state

tunneled=$(echo $status | $jq_bin ".ExitNodeStatus.Online")
# echo $tunneled

if [ "$svc_state" = "Running" ]; then
	# echo "Service is running"
	if [ $online = "true" ]; then
		# echo "Service is connected"
		if [ $tunneled = "true" ]; then
			# echo "Service is tunneled"
			alt="tunneled"
		else
			# echo "Service is not tunneled"
			alt="connected"
		fi
	else
		# echo "Service is disconnected"
		alt="disconnected"
	fi
else
	# echo "Service is stopped"
	alt="stopped"
fi

echo "{\"text\": \"tailscale dummy text\", \"alt\": \"$alt\", \"tooltip\": \"tailscale status: $alt\", \"class\": \"$alt\"}"
