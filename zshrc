if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
##########
export ZSH="$HOME/.oh-my-zsh"
export TERM=alacritty
##########
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
zsh-completions
auto-notify
extract
history-substring-search
)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
#ALIAS#
#
alias sudo="sudo "
alias reload="source ~/.zshrc"
alias c='clear'
alias psaux="ps -aux | grep -i"
alias clean="bash ~/Documents/clean-arch.sh"
alias save="bash ~/Documents/SAV-endeavour-bak-nas.sh"
alias help="/usr/bin/cat ~/Documents/help-alias | lolcat"
alias cht="cht.sh"
alias cheat="cht.sh"
alias aide="curl cht.sh"
alias cat="bat --theme ansi"
alias ls='lsd'
alias hg="history | grep "
alias server="python3 -m http.server 8000"
alias nano="nano -Y sh"
alias rm="rm -i"
alias maj="yay -Syyuu --noconfirm"
alias reflect="sudo reflector --verbose --latest 20 -c FR -c DE6 --sort rate --download-timeout 5 --threads 5 --save /etc/pacman.d/mirrorlist"
alias a='arsenal'
alias grep="grep --color=auto -i"
alias fan="sudo systemctl start fancontrol.service && sudo systemctl status fancontrol.service "
alias size="du -sh * | sort -rh"
alias kat="/usr/bin/cat"
#
alias tele="cd ~/Téléchargements;pwd;ls -al"
alias doc="cd ~/Documents;pwd;ll"
alias torrent="cd /home/tof/STOCK1/Download-Torrent;pwd;ls -al"
alias stock="cd ~/STOCK1;pwd;ll"
alias config="cd ~/.config;pwd"
alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'
#
alias ssharch="ssh -X tof@192.168.1.43"
alias vmrun="VBoxManage list runningvms"
alias vmlist="vboxmanage list vms"
alias arch="VBoxManage startvm "Arch" --type headless"
alias killarch="vboxmanage controlvm "Arch" poweroff"
#
alias flood="sudo hping3 --flood -V -c 1500 -d 64 -p 5353 192.168.1.191" 
alias meteo="curl "http://wttr.in/${1:-nancy}""
#
#FONCTIONS#
#
mkcd() { mkdir -p "${1}" && cd "${1}"; }
neof() { neofetch --ascii ~/Documents/Ascii/omer | lolcat -f; }
killvm() { VBoxManage controlvm "${1}" poweroff; }
startvm() { VBoxManage startvm "${1}" --type headless; }
fd() { /usr/bin/find / -type f -iname "*$1*" 2>/dev/null; }

neof
