#!/usr/bin/env bash

set -oue pipefail

rm -rf /usr/share/backgrounds/bluefin
rm -f /usr/share/backgrounds/chicken.webp
rm -f /usr/share/backgrounds/xe_clouds.jpeg
rm -f /usr/share/backgrounds/xe_foothills.jpeg
rm -f /usr/share/backgrounds/xe_space_needle.jpeg
rm -f /usr/share/backgrounds/xe_sunset.jpeg
rm -f /usr/share/wallpapers/xe_clouds.jpeg
rm -f /usr/share/wallpapers/xe_foothills.jpeg
rm -f /usr/share/wallpapers/xe_space_needle.jpeg
rm -f /usr/share/wallpapers/xe_sunset.jpeg

rm -f /usr/share/gnome-background-properties/bluefin-autumn-dynamic.xml
rm -f /usr/share/gnome-background-properties/bluefin-sprint-dynamic.xml
rm -f /usr/share/gnome-background-properties/bluefin-summer-dynamic.xml
rm -f /usr/share/gnome-background-properties/bluefin-winter-dynamic.xml
rm -f /usr/share/gnome-background-properties/chicken.xml
rm -f /usr/share/gnome-background-properties/xe_clouds.xml
rm -f /usr/share/gnome-background-properties/xe_foothills.xml
rm -f /usr/share/gnome-background-properties/xe_space_needle.xml
rm -f /usr/share/gnome-background-properties/xe_sunset.xml

# Also the Documentation shortcut in the Apps list
rm -f /usr/share/applications/Documentation.desktop