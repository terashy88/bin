#!/usr/bin/env bash

# Check if ufw is running
if ! pgrep -x "ufw" >/dev/null; then
    # Check if ufw is enabled
    if ! sudo ufw status | grep -q "Status: active"; then
        # Activate ufw
        echo 'Your Firewall is not active'
        sudo ufw enable
    fi
fi
