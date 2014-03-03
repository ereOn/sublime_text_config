#!/bin/sh

ROOT_PATH="$HOME/Library/Application Support/Sublime Text 3"
PACKAGES_PATH="$ROOT_PATH/Packages"
INSTALL_PACKAGES_PATH="$ROOT_PATH/Installed Packages"
USER_SETTINGS_PATH="$PACKAGES_PATH/User"
LOCAL_USER_SETTING_PATH="$(pwd)/User"
SUBL_PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
SUBL_INSTALL_PATH="/usr/bin/subl"
PACKAGE_CONTROL_URL="https://sublime.wbond.net/Package%20Control.sublime-package"

# Install the subl command line tool.
sudo ln -f -s "${SUBL_PATH}" "${SUBL_INSTALL_PATH}"

# Install the settings
mkdir -p "${PACKAGES_PATH}"
mkdir -p "${INSTALL_PACKAGES_PATH}"
ln -f -s "${LOCAL_USER_SETTING_PATH}" "${USER_SETTINGS_PATH}"

if [ ! -f "${INSTALL_PACKAGES_PATH}/Package Control.sublime-package" ]; then
	cd "${INSTALL_PACKAGES_PATH}" && wget ${PACKAGE_CONTROL_URL}
fi
