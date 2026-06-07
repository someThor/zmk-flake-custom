#!/usr/bin/env bash

KBD_NAME="flakem"

# uv tool install keymap-drawer
keymap -c my_config.yaml draw -d anywhy_flake.dtsi ${KBD_NAME}.yaml > ${KBD_NAME}.svg

# sudo apt install imagemagick
#convert -background transparent ${KBD_NAME}.svg ${KBD_NAME}.png

# Imagemagick7 (require inkscape for glyphs)
# nix-shell -p imagemagick inkscape-with-extensions
magick -background transparent ${KBD_NAME}.svg ${KBD_NAME}.png

# sudo apt install inkscape
#inkscape ${KBD_NAME}.svg \
#        --export-type=png \
#        --export-filename=${KBD_NAME}.png \
#        --export-dpi=300
