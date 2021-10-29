# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ -f ${HOME}/.zplug/init.zsh ]; then
    source ${HOME}/.zplug/init.zsh
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/josh/Shared/Development/flutter/bin"

# Path to your oh-my-zsh installation.
export ZSH="/home/josh/.oh-my-zsh"
export EDITOR="nvim"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
export PATH="Android/bin: $PATH"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  npm
  zsh-interactive-cd
  z
  yarn
  ufw
  systemadmin
  pass
  minikube
  kubectl
  jsontools
  emacs
  docker
  copybuffer
  copydir
  command-not-found
  transfer
)

#source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# better yaourt colors
#export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# added by Anaconda3 installer
#export PATH="/home/josh/anaconda3/bin:$PATH"

# autosuggestions
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-interactive-cd
source ~/.oh-my-zsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh

# zsh-syntax-highlighting
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# path for GO
# export PATH="$PATH:$HOME/go/bin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias p="sudo pacman"
alias s='subl'
alias r='ranger'
alias rrs='ranger Shared'
alias nit='nitrogen ~/Pictures'
alias ytvid='youtube-dl -f best'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias src="source ~/.zshrc" 
# alias doc="cd ~/Shared/Documents"
# alias dev="cd ~/Shared/Development"
# alias biz="cd ~/Shared/Documents/Business"
# alias todo="cd ~/Shared/Documents/Todos/2020/Journals/Months/April"
# alias dots="cd ~/Shared/Dotfiles"
# alias comp="cd ~/Shared/Documents/Computers"
# alias writing="cd ~/Shared/Documents/Writing"
# alias notes="cd ~/Shared/Documents/Notes"
 alias folder="thunar . &"
 alias revere="cd /mnt/TrueNAS/Revere"
 alias revereb="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Brokerage"
 alias revsys="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Systems"
# alias body="cd ~/Shared/Documents/Body/"
# alias podcast="cd ~/Shared/Documents/Podcasts/"
alias v="nvim"
alias nmconnect="nmcli device wifi connect"
alias nmlist="nmcli device wifi list"
alias nmdelete="nmcli device delete"
alias sd="spotifydl"
alias nas="cd /mnt/TrueNAS"
alias library="cd /mnt/TrueNAS/Library"
alias syncnas="rsync -avz --delete /mnt/TrueNAS/ /mnt/External4TB/TrueNAS"
alias mntexternal="sudo mount /dev/sda1 /mnt/External4TB" 
alias mntnas="sudo mount -t nfs -o soft,intr,bg 10.0.0.20:/mnt/Home/Homedata/josh /mnt/TrueNAS"
alias startvpn="sudo systemctl start wg-quick@wg0"
alias stopvpn="sudo systemctl stop wg-quick@wg0"
alias doomsync="~/.emacs.d/bin/doom sync"
alias reverecalc="cd /mnt/TrueNAS/Revere/Revere\ LATEST/Systems/Programs/Calculators && python ConveyancingOutput.py"
alias record="arecord -f cd output.wav"
alias sA="~/.config/scripts/scrotArea"
alias tsm="transmission-remote"

bindkey -v
bindkey -M viins 'kj' vi-cmd-mode
# this will cd and ls at the same time.
function cd {
    builtin cd "$@" && ls -F
    }

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:~/.config/bspwm

eval $(thefuck --alias)
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history
