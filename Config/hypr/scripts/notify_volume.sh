#!/bin/bash

# Changer le volume
case "$1" in
  up)   wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+ ;;
  down) wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- ;;
  mute) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle ;;
esac

# Récupérer le volume et le statut muet
VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
IS_MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED && echo true || echo false)

# Affichage de la notification
if [[ $IS_MUTED == true ]]; then
  dunstify -a "Volume" -u low -r 9993 "🔇 Volume muet"
else
  dunstify -a "Volume" -u low -r 9993 "🔊 Volume : ${VOLUME}%"
fi
