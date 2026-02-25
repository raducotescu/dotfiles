#!/usr/bin/env bash

set -eufo pipefail

# Use a single shared set of Spaces across all connected displays.
defaults write com.apple.spaces spans-displays -bool false && killall SystemUIServer

