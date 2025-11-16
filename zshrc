export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nano'
export BROWSER='firefox'
export LC_ALL=fr_FR.UTF-8
eval "$(oh-my-posh --init --shell zsh --config /home/tof/.config/poshthemes/1_shell.omp.json)"
# ==========================================
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory       # Ajoute à l'historique au lieu de l'écraser
setopt sharehistory        # Partage l'historique entre sessions
setopt hist_ignore_space   # Ignore les commandes commençant par un espace
setopt hist_ignore_all_dups # Ignore les doublons dans l'historique
setopt hist_save_no_dups   # Ne sauvegarde pas les doublons
setopt hist_find_no_dups   # Ignore les doublons lors de la recherche
# ==========================================
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list \
    'm:{a-zA-Z}={A-Za-z}' \
    '+r:|[._-]=* r:|=*' \
    '+l:|=*'
zstyle ':completion:*:warnings' format "%B%F{red}Ba je trouve pas:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

# ==========================================
plugins=(
    git
    colorize
    zsh-autosuggestions
    zsh-completions
    auto-notify
    extract
    history-substring-search
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

unsetopt LIST_BEEP
unsetopt AUTO_LIST

# ==========================================
alias aide='kitty zsh -c "~/aide.sh; exec zsh"'
alias z='kitty sh -c "grep -E \"^alias \" ~/.zshrc; exec zsh"'
alias reload="source ~/.zshrc && fastfetch"
alias c='clear'
alias re="c;reload"
alias psaux="ps -aux | grep -i"
alias clean="bash ~/Documents/clean-arch.sh | lolcat"
alias save="bash ~/Documents/SAV-arch-nas.sh | lolcat"
alias maj="yay -Syyuu --noconfirm"
alias reflect="sudo reflector --verbose --latest 20 -c FR -c DE6 --sort rate --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist"
alias info="sudo inxi -F"
alias du="duf"
# ==========================================
alias roblox="flatpak run org.vinegarhq.Sober"
#__________________________________________
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
alias server="python3 -m http.server 8000"
alias meteo="curl 'http://wttr.in/${1:-nancy}'"
alias wg="wcurl"
alias ip="ip -brief --color=auto"
alias down="http --download"
# ==========================================
alias nano="nano -Y sh"
alias grep="grep --color=auto -i"
alias cheat="curl cheat.sh"
alias hg="history | grep "
alias help=cheat
alias word=desktopeditors
alias office=desktopeditors

# ==========================================
alias vmrun="VBoxManage list runningvms"
alias vmlist="vboxmanage list vms"
# ==========================================
alias youtube="bash /home/tof/Documents/Scripts/youtube.sh"
alias changebg="bash /home/tof/Documents/change-bg-sddm.sh"
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
# ==========================================
mkcd() { mkdir -p "$1" && cd "$1"; }
killvm() { VBoxManage controlvm "$1" poweroff; }
startvm() { VBoxManage startvm "$1" --type headless; }
fdz() { find / -type f -iname "*$1*" 2>/dev/null; }
neof() { neofetch | lolcat -f; }
yt() { yt-dlp -x --audio-format mp3 "$1"; }
# ==========================================

export GITSTATUS_LOG_LEVEL=DEBUG
export PATH="$PATH:$HOME/.local/bin"

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

[[ -f /home/tof/.dart-cli-completion/zsh-config.zsh ]] && . /home/tof/.dart-cli-completion/zsh-config.zsh || true

# du = duf (diskfree)
# dust = disk usage whuith graf
# fd = find
# rg = grep -R . (ripgrep)
# tldr = mané

# Fonction pour préfixer les requêtes à Gemini-CLI
gem() {
    # Chemin vers le fichier contenant le prompt système
    PROMPT_FILE="$HOME/.gemini_prompt.txt"

    # Vérifie si le fichier de prompt existe
    if [ ! -f "$PROMPT_FILE" ]; then
        echo "Erreur : Fichier de prompt non trouvé à $PROMPT_FILE"
        return 1
    fi

    # Concatène le prompt système et la question de l'utilisateur, puis envoie à gemini-cli
    # Le "-" indique à `cat` de lire aussi l'entrée standard (stdin)
    (cat "$PROMPT_FILE"; echo "$@") | gemini 2>/dev/null | mdcat
}


# sudo pacman -S pkgfile && sudo pkgfile -u
command_not_found_handler() {
    local pkg
    if pkg=$(pkgfile -b "$1" 2>/dev/null); then
        echo "Commande '$1' non trouvée. Elle est disponible dans le paquet :"
        echo "    $pkg"
        echo "Pour l'installer : sudo pacman -S $pkg"
    else
        printf "zsh: command not found: %s\n" "$1" >&2
    fi
    return 127
}
