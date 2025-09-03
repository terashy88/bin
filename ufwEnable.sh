#!/usr/bin/env bash

firewall_() {
    # Check if ufw is running
    if ! sudo systemctl status "ufw" | grep "active" >/dev/null; then
        # Activate ufw
        echo 'Your Firewall is not active'
        echo 'activating...'
        sudo ufw enable || true

    fi
}
firewall_
