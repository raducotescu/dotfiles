#!/usr/bin/env bash

set -eufo pipefail

# Controls two-finger swipe navigation (back/forward) behavior.
defaults write -g AppleEnableSwipeNavigateWithScrolls -int 0
# Controls whether windows minimize when double-clicking their title bar.
defaults write -g AppleMiniaturizeOnDoubleClick -int 0
# Controls press-and-hold for accented characters vs key repeat.
defaults write -g ApplePressAndHoldEnabled -int 1
# Shows all file extensions in Finder and file dialogs.
defaults write -g AppleShowAllExtensions -int 1
# Controls cursor magnification when invoking "locate pointer" gestures.
defaults write -g CGDisableCursorLocationMagnification -int 0
# Sets the delay before a held key starts repeating.
defaults write -g InitialKeyRepeat -int 15
# Sets the key repeat rate after repeat starts.
defaults write -g KeyRepeat -int 2
# Enables or disables automatic capitalization system-wide.
defaults write -g NSAutomaticCapitalizationEnabled -int 0
# Enables or disables smart dash substitution.
defaults write -g NSAutomaticDashSubstitutionEnabled -int 0
# Enables or disables inline predictive text suggestions.
defaults write -g NSAutomaticInlinePredictionEnabled -int 0
# Enables or disables automatic period insertion on double-space.
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0
# Enables or disables smart quote substitution.
defaults write -g NSAutomaticQuoteSubstitutionEnabled -int 0
# Enables or disables automatic spelling correction.
defaults write -g NSAutomaticSpellingCorrectionEnabled -int 0
# Enables or disables automatic text correction features.
defaults write -g NSAutomaticTextCorrectionEnabled -int 0
# Enables or disables standard window open/close animations.
defaults write -g NSAutomaticWindowAnimationsEnabled -int 0
# Chooses local disk instead of iCloud as the default save location.
defaults write -g NSDocumentSaveNewDocumentsToCloud -int 0
# Defines custom text replacements in the user dictionary.
defaults write -g NSUserDictionaryReplacementItems '()'
# Enables or disables automatic spelling correction in WebKit-based fields.
defaults write -g WebAutomaticSpellingCorrectionEnabled -int 1

# Makes function keys act as standard F1-F12 keys by default.
defaults write -g com.apple.keyboard.fnState -int 1
# Controls natural scrolling direction for trackpad/mouse.
defaults write -g com.apple.swipescrolldirection -int 0
# Enables or disables Force Click on supported trackpads.
defaults write -g com.apple.trackpad.forceClick -int 0

# Automatically hides and shows the Dock.
defaults write com.apple.dock autohide -int 1
# Sets the Dock position on screen.
defaults write com.apple.dock orientation -string bottom
# Shows or hides recent applications in the Dock.
defaults write com.apple.dock show-recents -int 0
# Enables or disables the trackpad gesture for Show Desktop.
defaults write com.apple.dock showDesktopGestureEnabled -int 0
# Enables or disables the trackpad gesture for Launchpad.
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0
# Enables or disables the trackpad gesture for Mission Control.
defaults write com.apple.dock showMissionControlGestureEnabled -int 0

# Displays the full POSIX path in Finder window titles.
defaults write com.apple.finder _FXShowPosixPathInTitle -int 1
# Sets Finder's default view style for new windows.
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv
# Keeps folders sorted before files in Finder lists.
defaults write com.apple.finder _FXSortFoldersFirst -int 1
# Automatically removes old items from Trash after a grace period.
defaults write com.apple.finder FXRemoveOldTrashItems -int 1
# Shows or suppresses warnings when changing file extensions.
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0
