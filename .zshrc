# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# prompt history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

reboot_to_windows ()
{
    windows_title=$(sudo grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
    sudo grub-reboot "$windows_title" && sudo reboot
}

# aliases
alias ls='lsd -hA --group-dirs first'
alias windows='reboot_to_windows'
alias hdmi='pactl load-module module-loopback latency_msec=1'
alias unload='pactl unload-module module-loopback | pactl unload-module module-null-sink | pactl unload-module module-combine-sink'
alias monaudio='bash ~/scripts/mon_audio.sh'
alias mon='bash ~/scripts/mon_wayland.sh' #Wayland
alias monx='bash ~/scripts/mon_x11.sh'
alias bios='systemctl reboot --firmware-setup'
alias cleanup='sudo pacman -Rsn $(pacman -Qdtq); sudo pacman -Sc'
alias cemu='bash ~/HDD/.cemu/LaunchCEMU'
alias cemubotw='bash ~/HDD/.cemu/LaunchCEMUgcn3BOTW'
alias sw='python ~/scripts/swallow'
alias yuzu='vblank_mode=0 VK_ICD_FILENAMES=/opt/amdgpu-pro/etc/vulkan/icd.d/amd_icd64.json QT_QPA_PLATFORM=xcb python ~/scripts/swallow /home/c/HDD/Emulator/Switch/yuzu'

# ls after cd
function chpwd() {
    emulate -L zsh
    ls
}

# tab auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.powerlevel10k/powerlevel10k.zsh-theme
