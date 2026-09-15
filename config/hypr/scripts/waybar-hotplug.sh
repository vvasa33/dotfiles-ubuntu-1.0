#!/usr/bin/env bash
# Restart Waybar when a monitor is plugged in so a bar appears on the new output.
# Waybar only creates bars for outputs that exist at process start.

SOCKET="${XDG_RUNTIME_DIR}/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock"
LOCK="${XDG_RUNTIME_DIR}/waybar-hotplug.lock"

restart_waybar() {
    exec 9>"$LOCK"
    flock -n 9 || return 0
    # Let Hyprland finish modesetting the new output.
    sleep 0.6
    pkill -x waybar || true
    sleep 0.15
    waybar >/dev/null 2>&1 &
}

for _ in $(seq 1 50); do
    [[ -S "$SOCKET" ]] && break
    sleep 0.1
done

socat -u "UNIX-CONNECT:${SOCKET}" STDOUT | while IFS= read -r line; do
    case "$line" in
        monitoradded*)
            restart_waybar &
            ;;
    esac
done
