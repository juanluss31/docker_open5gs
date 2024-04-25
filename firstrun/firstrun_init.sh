#!/bin/bash

if [["$FIRSTRUN" =~ 1]]; then
    ./mnt/firstrun/dbconf-all.sh
fi
exit 1