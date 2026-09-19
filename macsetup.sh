#!/bin/bash
if [ "$(uname -s)" = "Darwin" ]; then
    defaults write com.apple.finder NewWindowTarget -string "PfHm"
    defaults write com.apple.finder ShowPathbar -bool true
    defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
    defaults write com.apple.finder FXInfoPanesExpanded -dict General -bool true
    killall Finder

    defaults write com.apple.dock autohide -bool false
    defaults write com.apple.dock show-recents -bool false
    defaults write com.apple.dock minimize-to-application -bool true
    killall Dock
    brew bundle
 else
    echo "This script is intended for macOS only."
fi
