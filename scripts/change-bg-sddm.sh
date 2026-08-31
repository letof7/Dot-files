#!/bin/bash

DESTINATION_DIR="/usr/share/sddm/themes/abstractdark-sddm-theme"  # Chemin du dossier où copier l'image
IMAGES_DIR="/home/tof/Documents/Imgs/sddm-imgs"  # Chemin du répertoire des images à choisir
IMAGE_FILE=$(find $IMAGES_DIR -type f | shuf -n 1)
echo "l'image est maintenant $IMAGE_FILE"
sleep 1
sudo cp "$IMAGE_FILE" "$DESTINATION_DIR/background.png"
echo "comme BG SddM"
notify-send -u normal 'BG pour Sddm changé'
