#!/usr/bin/env bash

set -eufo pipefail

# Use a single shared set of Spaces across all connected displays.
defaults write com.apple.spaces spans-displays -bool true && killall SystemUIServer

# Set every desktop to the built-in "Pro Black" wallpaper.
WALLPAPER="/System/Library/Desktop Pictures/Pro Black.madesktop"
osascript -e 'tell application "System Events" to tell every desktop to set picture to POSIX file "'"$WALLPAPER"'"'
