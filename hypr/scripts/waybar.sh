#!/bin/bash
waybar &
sleep 2
killall waybar
sleep 1
LINK_TARGET=$(readlink "$HOME/.config/hypr/look.conf")
if [ "$LINK_TARGET" = "/home/tof/.config/hypr-conf2/look.conf" ]; then
    waybar --config /home/tof/.config/waybar/config --style /home/tof/.config/waybar/style.css
elif [ "$LINK_TARGET" = "/home/tof/.config/hypr-conf1/look.conf" ]; then
    waybar -c /home/tof/.config/waybar2/config -s /home/tof/.config/waybar2/style.css
else
    echo "Erreur : Le lien symbolique look.conf ne correspond pas aux configurations connues."
exit 1
fi
