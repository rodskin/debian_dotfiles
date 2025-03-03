#!/bin/sh
# Capture l'écran
grim /tmp/screenshot.png

# Pixélise l'image
convert /tmp/screenshot.png -scale 10% -scale 1000% /tmp/screenshot_pixelated.png

# Lance swaylock avec l'image pixélisée
swaylock --image /tmp/screenshot_pixelated.png
