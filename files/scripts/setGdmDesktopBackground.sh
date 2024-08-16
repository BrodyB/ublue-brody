#!/usr/bin/env bash

set -euo pipefail

sudo -u gdm dbus-launch gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/gdm_background.png'