#!/usr/bin/env bash

set -eufo pipefail

# Controls two-finger swipe navigation (back/forward) behavior.
defaults write -g AppleEnableSwipeNavigateWithScrolls -int 1
# Controls mouse swipe navigation (back/forward) behavior.
defaults write -g AppleEnableMouseSwipeNavigateWithScrolls -int 1
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

# Mirrors current built-in trackpad preferences.
# Haptic click detents for Force Touch trackpads.
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1
# Tap-to-click.
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
# Drag lock behavior (keeps dragging after releasing).
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0
# Three-finger/dragging interaction toggle.
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0
# Pressure threshold for normal click.
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 1
# Suppresses Force Click actions when set.
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -int 0
# Pressure threshold for secondary click.
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 1
# Secondary click corner selection.
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 0
# Five-finger pinch gesture behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2
# Horizontal swipe with four fingers (Spaces/full-screen apps).
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 0
# Four-finger pinch gesture behavior (e.g., Launchpad/Desktop).
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2
# Vertical swipe with four fingers (Mission Control/App Expose).
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
# Palm/hand resting detection.
defaults write com.apple.AppleMultitouchTrackpad TrackpadHandResting -int 1
# Horizontal scrolling enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1
# Momentum/inertial scrolling enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -int 1
# Pinch-to-zoom enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1
# Secondary click enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 1
# Rotation gesture enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1
# General scrolling enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -int 1
# Three-finger drag enablement.
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 0
# Horizontal swipe with three fingers (Spaces/full-screen apps).
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2
# Three-finger tap gesture behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0
# Vertical swipe with three fingers (Mission Control/App Expose).
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
# Two-finger double-tap gesture behavior.
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -int 1
# Two-finger edge swipe from right (Notification Center).
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
# Keep trackpad active when a USB mouse is connected.
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0
# Marks that explicit user preferences are present.
defaults write com.apple.AppleMultitouchTrackpad UserPreferences -int 1
# Preference schema version for this domain.
defaults write com.apple.AppleMultitouchTrackpad version -int 12

# Mirrors current bluetooth/secondary trackpad preferences.
# Tap-to-click.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
# Drag lock behavior (keeps dragging after releasing).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -int 0
# Three-finger/dragging interaction toggle.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 0
# Secondary click corner selection.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 0
# Five-finger pinch gesture behavior.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 2
# Horizontal swipe with four fingers (Spaces/full-screen apps).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 0
# Four-finger pinch gesture behavior (e.g., Launchpad/Desktop).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 2
# Vertical swipe with four fingers (Mission Control/App Expose).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
# Palm/hand resting detection.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHandResting -int 1
# Horizontal scrolling enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHorizScroll -int 1
# Momentum/inertial scrolling enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadMomentumScroll -int 1
# Pinch-to-zoom enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -int 1
# Secondary click enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -int 1
# Rotation gesture enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -int 1
# General scrolling enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadScroll -int 1
# Three-finger drag enablement.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 0
# Horizontal swipe with three fingers (Spaces/full-screen apps).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 2
# Three-finger tap gesture behavior.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 0
# Vertical swipe with three fingers (Mission Control/App Expose).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0
# Two-finger double-tap gesture behavior.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -int 1
# Two-finger edge swipe from right (Notification Center).
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
# Keep trackpad active when a USB mouse is connected.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad USBMouseStopsTrackpad -int 0
# Marks that explicit user preferences are present.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad UserPreferences -int 1
# Preference schema version for this domain.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad version -int 5

# Mirrors current host-specific trackpad preferences.
# Secondary click enablement.
defaults -currentHost write -g com.apple.trackpad.enableSecondaryClick -int 1
# Five-finger pinch gesture behavior.
defaults -currentHost write -g com.apple.trackpad.fiveFingerPinchSwipeGesture -int 2
# Horizontal swipe with four fingers (Spaces/full-screen apps).
defaults -currentHost write -g com.apple.trackpad.fourFingerHorizSwipeGesture -int 2
# Four-finger pinch gesture behavior (e.g., Launchpad/Desktop).
defaults -currentHost write -g com.apple.trackpad.fourFingerPinchSwipeGesture -int 2
# Vertical swipe with four fingers (Mission Control/App Expose).
defaults -currentHost write -g com.apple.trackpad.fourFingerVertSwipeGesture -int 2
# Momentum/inertial scrolling enablement.
defaults -currentHost write -g com.apple.trackpad.momentumScroll -int 1
# Pinch-to-zoom enablement.
defaults -currentHost write -g com.apple.trackpad.pinchGesture -int 1
# Rotation gesture enablement.
defaults -currentHost write -g com.apple.trackpad.rotateGesture -int 1
# Scroll behavior mode (natural/reverse style handling).
defaults -currentHost write -g com.apple.trackpad.scrollBehavior -int 2
# Three-finger drag enablement.
defaults -currentHost write -g com.apple.trackpad.threeFingerDragGesture -int 0
# Horizontal swipe with three fingers (Spaces/full-screen apps).
defaults -currentHost write -g com.apple.trackpad.threeFingerHorizSwipeGesture -int 2
# Three-finger tap gesture behavior.
defaults -currentHost write -g com.apple.trackpad.threeFingerTapGesture -int 0
# Vertical swipe with three fingers (Mission Control/App Expose).
defaults -currentHost write -g com.apple.trackpad.threeFingerVertSwipeGesture -int 0
# Two-finger double-tap gesture behavior.
defaults -currentHost write -g com.apple.trackpad.twoFingerDoubleTapGesture -int 1
# Two-finger edge swipe from right (Notification Center).
defaults -currentHost write -g com.apple.trackpad.twoFingerFromRightEdgeSwipeGesture -int 3
# Preference schema version for host-specific trackpad prefs.
defaults -currentHost write -g com.apple.trackpad.version -int 5

# Automatically hides and shows the Dock.
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock autohide-time-modifier -float 0.2
# Sets the Dock position on screen.
defaults write com.apple.dock orientation -string bottom
# Shows or hides recent applications in the Dock.
defaults write com.apple.dock show-recents -int 0
# Enables or disables the trackpad gesture for Show Desktop.
defaults write com.apple.dock showDesktopGestureEnabled -int 1
# Enables or disables the trackpad gesture for Launchpad.
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0
# Enables or disables the trackpad gesture for Mission Control.
defaults write com.apple.dock showMissionControlGestureEnabled -int 1
# Enables or disables the trackpad gesture for App Expose.
defaults write com.apple.dock showAppExposeGestureEnabled -int 1

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

for process in Dock SystemUIServer cfprefsd; do
  killall "$process" >/dev/null 2>&1 || true
done
