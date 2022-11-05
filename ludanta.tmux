#!/usr/bin/env bash

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CWD/scripts/tmux.sh"

ludanta_script="#($CWD/scripts/ludanta.sh)"
ludanta_tag="\#{mpd_now_playing}"

interpolate() {
    local option="$1"
    local value
    value="$(get_tmux_option "$option")"
    local interpolated="${value/$ludanta_tag/$ludanta_script}"
    set_tmux_option "$option" "$interpolated"
}

main() {
    interpolate "status-right"
}

main
