#!/usr/bin/env sh

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

export RED=0xffed8796
export MAROON=0xffee99a0
export PEACH=0xfff5a97f
export YELLOW=0xffeed49f
export GREEN=0xffa6da95

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  [8-9][0-9]|100) 
    ICON=""
    ICON_COLOR=$GREEN
    ;;
  7[0-9])
    ICON=""
    ICON_COLOR=$YELLOW
    ;;
  [4-6][0-9]) 
    ICON=""
    ICON_COLOR=$PEACH
    ;;
  [1-3][0-9]) 
    ICON=""
    ICON_COLOR=$MAROON
    ;;
  [0-9])
    ICON=""
    ICON_COLOR=$RED
    ;;
esac

if [[ $CHARGING != "" ]]; then
  ICON=""
  ICON_COLOR=0xffeed49f
fi

sketchybar --set $NAME icon=$ICON label="${PERCENTAGE}%" icon.color=${ICON_COLOR}
