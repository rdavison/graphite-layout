#!/usr/bin/env bash

if [ "$XDG_CURRENT_DESKTOP" == "GNOME" ]; then
    gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us+graphite')]"
    #gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

elif [ "$XDG_CURRENT_DESKTOP" == "KDE" ]; then
    kwriteconfig6 --file kxkbrc --group Layout --key LayoutList us
    kwriteconfig6 --file kxkbrc --group Layout --key VariantList graphite
    #kwriteconfig6 --file kxkbrc --group Layout --key Options caps:backspace # Uncomment for CAPS to be BKSP
    #kwriteconfig6 --file kxkbrc --group Layout --key Options ctrl:nocaps    # Uncomment for CAPS to be CTRL
    dbus-send --session --type=signal --reply-timeout=100 --dest=org.kde.keyboard /Layouts org.kde.keyboard.reloadConfig

else
    if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
        echo "You're running Wayland with a compositor other than Gnome or KDE"
        echo "I don't know how to enable the layout for your compositor."
        echo "You will need to manually enable it in your window manager."
        exit 1
    else
        setxkbmap us -variant graphite
        #setxkbmap us -variant graphite -option ctrl:nocaps
    fi
fi

echo ""
echo "Graphite Layout should now be the active layout"
echo ""
