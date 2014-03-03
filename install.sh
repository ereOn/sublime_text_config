#!/bin/sh

SETTINGS_PATH="$HOME/Library/Application Support/Sublime Text 3/Packages"
USER_SETTINGS_PATH="$SETTINGS_PATH/User"
LOCAL_USER_SETTING_PATH="$(pwd)/User"
SUBL_PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
SUBL_INSTALL_PATH="/usr/bin/subl"

# Install the subl command line tool.
sudo ln -f -s "${SUBL_PATH}" "${SUBL_INSTALL_PATH}"

# Install the settings
mkdir -p "${SETTINGS_PATH}"
ln -f -s "${LOCAL_USER_SETTING_PATH}" "${USER_SETTINGS_PATH}"
