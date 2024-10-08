#Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export TERM=alacritty
export TERMINAL="alacritty"

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
alias reload="source ~/.zshrc"
alias c='clear'
alias psaux="ps -aux | grep -i"
alias clean="bash ~/Documents/clean-arch.sh | lolcat"
alias save="bash ~/Documents/SAV-arch-nas.sh | lolcat"
alias maj="yay -Syyuu --noconfirm"
alias reflect="sudo reflector --verbose --latest 20 -c FR -c DE6 --sort rate --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist"

## File management aliases
alias cat="bat --theme ansi"
alias ls='lsd --group-directories-first'
alias l='ls'
alias ll='lsd --group-directories-first -al'
alias rm="rm -i"
alias size="du -sh * | sort -rh"
alias kat="/usr/bin/cat"
alias fm="nnn -de -H"
alias tree=gt

## Navigation aliases
alias tele="cd ~/Downloads && pwd && ls -al"
alias doc="cd ~/Documents && pwd && ll"
alias torrent="cd /home/tof/STOCK1/Download-Torrent && pwd && ls -al"
alias stock="cd ~/STOCK1 && pwd && ll"
alias config="cd ~/.config && pwd"
alias ..='cd .. && pwd'
alias ...='cd ../.. && pwd'
alias ....='cd ../../.. && pwd'

## Network aliases
alias sshp="ssh -X tof@192.168.1.235"
alias server="python3 -m http.server 8000"
alias meteo="curl 'http://wttr.in/${1:-nancy}'"
alias wg="wcurl"

## Development aliases
alias nano="nano -Y sh"
alias grep="grep --color=auto -i"
alias cheat="curl cheat.sh"
alias hg="history | grep "

## VirtualBox aliases
alias vmrun="VBoxManage list runningvms"
alias vmlist="vboxmanage list vms"

## Miscellaneous aliases
alias changebg="bash /home/tof/Documents/change-bg-sddm.sh"
alias roblox="flatpak run org.vinegarhq.Sober"


# Functions
mkcd() { mkdir -p "$1" && cd "$1"; }
killvm() { VBoxManage controlvm "$1" poweroff; }
startvm() { VBoxManage startvm "$1" --type headless; }
fd() { find / -type f -iname "*$1*" 2>/dev/null; }
neof() { neofetch | lolcat -f; }
yt() { yt-dlp -x --audio-format mp3 "$1"; }

echo ""
neof
