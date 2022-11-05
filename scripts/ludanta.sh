#!/usr/bin/env bash

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CWD/tmux.sh"

ludanta() {
	PLAYING=$(mpc current | awk -F':' '{print $NF}' | awk '{$1=$1};1')

	if [[ -n "$PLAYING" ]]; then
		TRACK_LEN=${#PLAYING}

		if [[ "$TRACK_LEN" -gt 40 ]]; then
			PLAYING=$(echo "$PLAYING" | cut -c -52)
			PLAYING+=...
		fi

		# Make all lowercase
		PLAYING=$(echo $PLAYING | tr '[:upper:]' '[:lower:]')
		# Capitalize first letter on each word
		PLAYING=$(echo "$PLAYING" | awk '{for(i=1;i<=NF;i++)sub(/./,toupper(substr($i,1,1)),$i)}1')

		echo -n ' ' "$PLAYING"
	else
		echo -n "❚❚ Paused"
	fi
}

ludanta
