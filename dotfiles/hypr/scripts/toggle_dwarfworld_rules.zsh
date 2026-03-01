#!/usr/bin/env zsh

LOGFILE="$HOME/.config/hypr/scripts/dwarfworld_toggle.log"

echo "$(date): Script executado" >> $LOGFILE

RULE_NAME="title:^(DwarfWorldWindow)$"

if hyprctl getoption windowrulev2 | grep -q "$RULE_NAME"; then
    hyprctl keyword windowrulev2 "unset, title:^(DwarfWorldWindow)$" >> $LOGFILE 2>&1
    echo "Regras removidas" >> $LOGFILE
else
    hyprctl keyword windowrulev2 "noblur, $RULE_NAME" >> $LOGFILE 2>&1
    hyprctl keyword windowrulev2 "noborder, $RULE_NAME" >> $LOGFILE 2>&1
    hyprctl keyword windowrulev2 "noshadow, $RULE_NAME" >> $LOGFILE 2>&1
    echo "Regras aplicadas" >> $LOGFILE
fi
