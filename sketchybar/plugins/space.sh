#!/usr/bin/env sh


WHITE=0xffcad3f5
WHITE_2=0xffafb2cc
BLACK=0xff181926
BACKGROUND_1=0xff3c3e4f
BACKGROUND_2=0xff494d64
GREY=0xff939ab7

BACKGROUND=$BACKGROUND_1
TEXT=$WHITE
if [ "$SELECTED" = "true" ]; then
    BACKGROUND=$WHITE_2
    TEXT=$BLACK
fi

sketchybar --animate tanh 20 --set $NAME background.color=$BACKGROUND icon.color=$TEXT label.color=$TEXT
