#!/bin/bash

test="$1"

if [[ "$test" = "1" ]]; then
    i3-msg -q workspace ""
elif [[ "$test" = "3" ]]; then
    exec dolphin
else
    pass
fi
          