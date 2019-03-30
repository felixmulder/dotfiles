#!/usr/bin/env bash

SCREENSHOT=/tmp/.i3lock.png

xwobf -s 10 $SCREENSHOT
i3lock -i $SCREENSHOT
