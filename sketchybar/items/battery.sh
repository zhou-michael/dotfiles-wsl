sketchybar  --add   item battery right \
            --set   battery \
                        icon.y_offset=1 \
                        icon.font="FantasqueSansMono Nerd Font:Bold:14.0" \
                        drawing=on \
                        background.padding_left=15 \
                        update_freq=10 \
                        script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke

