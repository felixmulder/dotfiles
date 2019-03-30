#!/usr/bin/env bash

key=`setxkbmap -query | grep layout | awk '{print $2}'`

if [ "$key" == "us" ]; then
    setxkbmap -layout se
else
    setxkbmap -layout us
fi
