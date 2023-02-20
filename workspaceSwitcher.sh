#!/bin/bash

#
# Thiswill switch to the workspace with left click and open app with right click.
# script must be supplied the name and button id when called.
# ex. ./test2.sh $name $button
#

appName="$1"
commandSignal="$2"

if [[ "$appName" = "terminal" ]]; then
    if [[ "$commandSignal" = "1" ]]; then
        i3-msg -q workspace "8:"
    elif [[ "$commandSignal" = "3" ]]; then
        i3-msg exec -q konsole
    else
        pass
    fi
    
elif [[ "$appName" = "files" ]]; then
    if [[ "$commandSignal" = "1" ]]; then
        i3-msg -q workspace ""
    elif [[ "$commandSignal" = "3" ]]; then
        i3-msg exec -q dolphin
    else
        pass
    fi

elif [[ "$appName" = "discord" ]]; then
    if [[ "$commandSignal" = "1" ]]; then
        i3-msg -q workspace "7:"
    elif [[ "$commandSignal" = "3" ]]; then
        i3-msg exec -q Discord
    else
        pass
    fi

elif [[ "$appName" = "browser" ]]; then
    if [[ "$commandSignal" = "1" ]]; then
        i3-msg -q workspace "1:"
    elif [[ "$commandSignal" = "3" ]]; then
        i3-msg -q workspace "4: "
    elif [[ "$commandSignal" = "2" ]]; then
        i3-msg exec -q firefox
    else
        pass
    fi

else
    pass
fi
          