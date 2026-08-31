#!/bin/bash
yay -Sc
yay -Yc
yes | sudo pacman -Scc
#yes | yay -Scc
rm -rf .cache/*
sudo journalctl --vacuum-size=50M
sudo rm -rfv /var/tmp/flatpak-cache-*
sudo pacman -Rns $(pacman -Qtdq) 2>/dev/null
sudo paccache -rk 1





