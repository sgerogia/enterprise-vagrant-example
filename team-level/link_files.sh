#/usr/bin/env bash

if [ "$VAGRANT_HOME" == "" ]; then
    echo "--- VAGRANT_HOME is not defined. Check your Vagrant installation and try again."
    exit 1
fi


CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "--- Linking Vagrantfile ---"
ln -s "${CURRENT_DIR}/Vagrantfile" "${VAGRANT_HOME}"

echo "--- Linking associated resources ---"
ln -s "${CURRENT_DIR}/scripts" "${VAGRANT_HOME}/scripts"

echo "-- Done --"