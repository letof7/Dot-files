# Définir LS_COLORS avant de charger Oh My Zsh
# export LS_COLORS="di=37:ln=37:so=37:pi=37:ex=37:bd=37:cd=37:su=37:sg=37:tw=37:ow=37:*.txt=37:*.md=37:*.sh=37"


#Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

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

## System aliases
alias reload="source ~/.zshrc && fastfetch"
alias c='clear'
alias psaux="ps -aux | grep -i"
alias clean="bash ~/Documents/clean-arch.sh | lolcat"
alias save="bash ~/Documents/SAV-arch-nas.sh | lolcat"
alias maj="yay -Syyuu --noconfirm"
alias reflect="sudo reflector --verbose --latest 20 -c FR -c DE6 --sort rate --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist"
alias info="sudo inxi -F"

## File management aliases
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

## Navigation aliases
alias tele="cd ~/Downloads && pwd && ls -al"
alias doc="cd ~/Documents && pwd && ll"
alias torrent="cd /home/tof/STOCK1/Download-Torrent && pwd && ls -al"
alias stock="cd ~/STOCK1 && pwd && ll"
alias config="cd ~/.config && pwd"
alias series="cd /home/tof/DATAX1/torrents/Series && pwd && ll"
alias films="cd /home/tof/DATAX1/torrents/Films-terminés && pwd && ll"
alias animes="cd /home/tof/DATAX1/torrents/Dessins-animes && pwd && ll"
alias zic="cd /home/tof/Musique/ && pwd && ll"
alias musique=zic

alias ..='cd .. && pwd'
alias ...='cd ../.. && pwd'
alias ....='cd ../../.. && pwd'

## Network aliases
alias server="python3 -m http.server 8000"
alias meteo="curl 'http://wttr.in/${1:-nancy}'"
alias wg="wcurl"

## Development aliases
alias nano="nano -Y sh"
alias grep="grep --color=auto -i"
alias cheat="curl cheat.sh"
alias hg="history | grep "
alias help="ollama run deepseek-r1:7b"
alias deepseek=help

## VirtualBox aliases
alias vmrun="VBoxManage list runningvms"
alias vmlist="vboxmanage list vms"

## Miscellaneous aliases
alias changebg="bash /home/tof/Documents/change-bg-sddm.sh"
alias roblox="flatpak run org.vinegarhq.Sober"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Functions
mkcd() { mkdir -p "$1" && cd "$1"; }
killvm() { VBoxManage controlvm "$1" poweroff; }
startvm() { VBoxManage startvm "$1" --type headless; }
fd() { find / -type f -iname "*$1*" 2>/dev/null; }
neof() { neofetch | lolcat -f; }
yt() { yt-dlp -x --audio-format mp3 "$1"; }



# bun completions
[ -s "/home/tof/.bun/_bun" ] && source "/home/tof/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"



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
*.ini=38;5;249:\
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
*.mp3=38;5;55:\
*.mp4=38;5;55:\
*.zip=38;5;201:\
*.tar=38;5;201:\
*.gz=38;5;201:\
*.tgz=38;5;201:\
*.rar=38;5;201:\
*.mkv=38;5;55:\
*.iso=38;5;240:\
*.sql=38;5;249:\
*.csv=38;5;249:\
*.xlsx=38;5;249:\
*.docx=38;5;249:\
*.pdf=38;5;249:\
*.odt=38;5;249:\
"



