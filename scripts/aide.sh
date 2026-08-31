#!/bin/bash

# --- Couleurs ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

# --- Fonction pour afficher une section ---
print_section() {
    echo -e "\n${CYAN}--- $1 ---${RESET}"
}

# --- Affichage de l'aide ---

clear
echo -e "${YELLOW}======================================================="
echo -e "  AIDE-MÉMOIRE INTERACTIF - RACCOURCIS HYPRLAND"
echo -e "  (La touche SUPER est la touche 'Windows')"
echo -e "${YELLOW}=======================================================${RESET}"

print_section "Lancement d'applications"
echo -e "${GREEN}SUPER + Entrée${RESET}        : Ouvrir un terminal (kitty)"
echo -e "${GREEN}SUPER + K${RESET}             : Ouvrir un terminal (alacritty)"
echo -e "${GREEN}SUPER + X${RESET}             : Ouvrir yazi (gestionnaire de fichiers TUI)"
echo -e "${GREEN}SUPER + F${RESET}             : Lancer Firefox"
echo -e "${GREEN}SUPER + A${RESET}             : Lancer Audacious (lecteur musique)"
echo -e "${GREEN}SUPER + E${RESET}             : Lancer Dolphin (gestionnaire de fichiers GUI)"
echo -e "${GREEN}SUPER + SPACE${RESET}         : Lancer wofi (menu d’applications)"

print_section "Gestion des fenêtres"
echo -e "${GREEN}SUPER + W${RESET}             : Fermer la fenêtre active"
echo -e "${GREEN}SUPER + S${RESET}             : Mettre en plein écran"
echo -e "${GREEN}SUPER + V${RESET}             : Basculer la fenêtre en mode flottant"
echo -e "${GREEN}SUPER + J${RESET}             : Inverser le sens du split (horizontal/vertical)"
echo -e "${GREEN}SUPER + P${RESET}             : Activer le mode 'pseudo-tiling'"
echo -e "${GREEN}SUPER + C${RESET}             : Gérer le presse-papier"
echo -e "${GREEN}SUPER + flèches${RESET}       : Déplacer le focus entre les fenêtres"
echo -e "${GREEN}SUPER + SHIFT + flèches${RESET} : Déplacer la fenêtre active"

print_section "Gestion des Workspaces (Bureaux virtuels)"
echo -e "${GREEN}SUPER + [1-10]${RESET}         : Aller sur le bureau N°"
echo -e "${GREEN}SUPER + SHIFT + [1-10]${RESET} : Envoyer la fenêtre vers le bureau N°"
echo -e "${GREEN}SUPER + Tab${RESET}           : Vue d'ensemble des bureaux (expo)"
echo -e "${GREEN}SUPER + molette${RESET}      : Naviguer entre les bureaux"

print_section "Interactions Souris"
echo -e "${GREEN}SUPER + Clic Gauche${RESET}    : Déplacer la fenêtre (maintenir)"
echo -e "${GREEN}SUPER + Clic Droit${RESET}     : Redimensionner la fenêtre (maintenir)"

print_section "Système & Utilitaires"
echo -e "${GREEN}SUPER + z${RESET}             : Afficher / Masquer la barre de statut (waybar)"
echo -e "${GREEN}SUPER + M${RESET}             : Outil de capture d'écran (grimblast)"
echo -e "${GREEN}SUPER + ESC${RESET}           : Verrouiller la session"
echo -e "${GREEN}Touche Volume +/-${RESET}   : Gérer le volume"

print_section "Alias & Commandes Terminal"
echo -e "${MAGENTA}helpme${RESET}     : Affiche Cheat.sh"
echo -e "${RED}exit${RESET}      : Ferme le terminal (ou ${GREEN}SUPER + W${RESET})"

echo -e "\n${YELLOW}=======================================================${RESET}"
echo -e "Bonne utilisation de Hyprland !"
echo -e "${YELLOW}=======================================================${RESET}\n"
