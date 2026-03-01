#!/usr/bin/env zsh
PLAYERCTL="/home/menezess42/.nix-profile/bin/playerctl"

case "$1" in
    prev)    $PLAYERCTL previous ;;
    play)    $PLAYERCTL play-pause ;;
    next)    $PLAYERCTL next ;;
esac
