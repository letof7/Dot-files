# ==========================================
# Configuration de base
# ==========================================

# Powerlevel10k instant prompt (pour un démarrage rapide)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nano'
export BROWSER='firefox'
export HISTORY_IGNORE="(ls|cd|pwd|exit|history|cd -|cd ..)"
export LC_ALL=fr_FR.UTF-8

# ==========================================
# Configuration de l'historique
# ==========================================

# HISTFILE=~/.config/zsh/zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory       # Ajoute à l'historique au lieu de l'écraser
setopt sharehistory        # Partage l'historique entre sessions
setopt hist_ignore_space   # Ignore les commandes commençant par un espace
setopt hist_ignore_all_dups # Ignore les doublons dans l'historique
setopt hist_save_no_dups   # Ne sauvegarde pas les doublons
setopt hist_find_no_dups   # Ignore les doublons lors de la recherche

# ==========================================
# Complétion Zsh
# ==========================================

# Activation de la complétion verbose
zstyle ':completion:*' verbose true

# Menu de sélection pour la complétion
zstyle ':completion:*:*:*:*:*' menu select

# Couleurs pour la complétion (basées sur LS_COLORS)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'

# Correspondance intelligente (ignore la casse, correspondance partielle)
zstyle ':completion:*' matcher-list \
    'm:{a-zA-Z}={A-Za-z}' \
    '+r:|[._-]=* r:|=*' \
    '+l:|=*'

# Messages personnalisés pour les avertissements et descriptions
zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'

# Informations VCS (Git) dans le prompt
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

# ==========================================
# Thème et plugins Oh My Zsh
# ==========================================

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
    auto-notify
    extract
    history-substring-search
)

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==========================================
# Alias système
# ==========================================

alias aide='kitty zsh -c "~/aide.sh; exec zsh"'

alias z='kitty sh -c "grep -E \"^alias \" ~/.zshrc; exec zsh"'
alias reload="source ~/.zshrc && fastfetch"
alias c='clear'
alias psaux="ps -aux | grep -i"
alias clean="bash ~/Documents/clean-arch.sh | lolcat"
alias save="bash ~/Documents/SAV-arch-nas.sh | lolcat"
alias maj="yay -Syyuu --noconfirm"
alias reflect="sudo reflector --verbose --latest 20 -c FR -c DE6 --sort rate --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist"
alias info="sudo inxi -F"
alias du="duf"

# ==========================================
# Alias gestion de fichiers
# ==========================================

alias icat="kitten icat"
alias cat="bat --theme ansi"
alias ls='lsd --group-directories-first'
alias l='ls'
alias ll='lsd --group-directories-first -l'
alias la='lsd --group-directories-first -la'
alias rm="rm -i"
alias size="du -sh * | sort -rh"
alias kat="/usr/bin/cat"
alias tree=gt
alias find="fd -H -a" 
# ==========================================
# Alias navigation
# ==========================================

alias tele="cd ~/Downloads && pwd && ls -al"
alias doc="cd ~/Documents && pwd && ll"
alias torrent="cd /home/tof/STOCK1/Download-Torrent && pwd && ls -al"
alias tor="torrent"
alias stock="cd ~/STOCK1 && pwd && ll"
alias config="cd ~/.config && pwd"
alias series="cd /home/tof/DATAX1/torrents/Series && pwd && ll"
alias films="cd /home/tof/DATAX1/torrents/Films-terminés && pwd && ll"
alias animes="cd /home/tof/DATAX1/torrents/Dessins-animes && pwd && ll"
alias zic="cd /home/tof/Musique/ && pwd && ll"
alias musique=zic
alias games="cd ~/STOCK1/Gamez && pwd && ll"
alias gamez="games"


alias ..='cd .. && pwd'
alias ...='cd ../.. && pwd'
alias ....='cd ../../.. && pwd'

# ==========================================
# Alias réseau
# ==========================================

alias server="python3 -m http.server 8000"
alias meteo="curl 'http://wttr.in/${1:-nancy}'"
alias wg="wcurl"
alias ip="ip -brief --color=auto"
alias sshk="alacritty -e ssh kali@192.168.1.228"
alias down="http --download"

# ==========================================
# Alias développement
# ==========================================

alias nano="nano -Y sh"
alias grep="grep --color=auto -i"
alias cheat="curl cheat.sh"
alias hg="history | grep "
alias help=cheat

# ==========================================
# Alias VirtualBox
# ==========================================

alias vmrun="VBoxManage list runningvms"
alias vmlist="vboxmanage list vms"
#kali-linux-2024.4-virtualbox-amd64
alias kali="VBoxManage startvm "kali-linux-2024.4-virtualbox-amd64" --type headless"
alias killkali="VBoxManage controlvm "kali-linux-2024.4-virtualbox-amd64" poweroff"

# ==========================================
# Alias divers
# ==========================================

alias changebg="bash /home/tof/Documents/change-bg-sddm.sh"
alias roblox="flatpak run org.vinegarhq.Sober"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# ==========================================
# Fonctions personnalisées
# ==========================================

mkcd() { mkdir -p "$1" && cd "$1"; }
killvm() { VBoxManage controlvm "$1" poweroff; }
startvm() { VBoxManage startvm "$1" --type headless; }
fdz() { find / -type f -iname "*$1*" 2>/dev/null; }
neof() { neofetch | lolcat -f; }
yt() { yt-dlp -x --audio-format mp3 "$1"; }

# ==========================================
# Gestion des commandes inconnues
# ==========================================

command_not_found_handler() {
    printf "%s%s? Je ne connais pas cette putain de commande\n" "$acc" "$0" >&2
    return 127
}

# ==========================================
# Configuration de Bun (JavaScript runtime)
# ==========================================

[ -s "/home/tof/.bun/_bun" ] && source "/home/tof/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ==========================================
# Configuration des couleurs pour `ls`
# ==========================================

export LS_COLORS="\
di=38;5;255:\
ln=38;5;105:\
so=38;5;245:\
pi=38;5;240:\
ex=38;5;40:\
bd=38;5;240:\
cd=38;5;244:\
su=38;5;196;48;5;240:\
sg=38;5;196;48;5;240:\
tw=38;5;196;48;5;240:\
ow=38;5;255;48;5;240:\
*.txt=38;5;226:\
*.md=38;5;226:\
*.log=38;5;248:\
*.conf=38;5;226:\
*.ini=38;5;226:\
*.sh=38;5;77:\
*.py=38;5;77:\
*.js=38;5;252:\
*.html=38;5;251:\
*.css=38;5;251:\
*.json=38;5;251:\
*.jpeg=38;5;53:\
*.jpg=38;5;53:\
*.png=38;5;53:\
*.gif=38;5;53:\
*.mp3=38;5;110:\
*.mp4=38;5;110:\
*.zip=38;5;201:\
*.tar=38;5;201:\
*.gz=38;5;201:\
*.tgz=38;5;201:\
*.rar=38;5;201:\
*.avi=38;5;110:\
*.mkv=38;5;110:\
*.iso=38;5;201:\
*.sql=38;5;249:\
*.csv=38;5;249:\
*.xlsx=38;5;249:\
*.docx=38;5;249:\
*.pdf=38;5;249:\
*.odt=38;5;249:\
"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/tof/.dart-cli-completion/zsh-config.zsh ]] && . /home/tof/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

# du = duf (diskfree)
# dust = disk usage whuith graf
# fd = find
# rg = grep -R . (ripgrep)
# tldr = mané
#
#
#
