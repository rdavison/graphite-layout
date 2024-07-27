#!/usr/bin/env bash
#
# Uninstalls the Graphite keyboard layout
#

#set -x
set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
XKB_DIR=/usr/share/X11/xkb
SYMBOLS_DIR=${XKB_DIR}/symbols
RULES_DIR=${XKB_DIR}/rules
EVDEV_XML=${RULES_DIR}/evdev.xml

uninstall_layout() {
	sed -i '/^\/\/---GRAPHITE BEGIN---/,/^\/\/---GRAPHITE END---/d' ${SYMBOLS_DIR}/us
    echo "Removed Graphite layout symbols"
	sed -i '/GRAPHITE BEGIN/,/GRAPHITE END/d' ${EVDEV_XML}
    echo "Removed Graphite from xkb registry"
}

verify_user_is_root() {
    if [ ! "${EUID:-$(id -u)}" -eq 0 ]; then
        echo "This script must unfortunately be run with sudo";
        exit 1
    fi
}

verify_user_is_root
uninstall_layout
