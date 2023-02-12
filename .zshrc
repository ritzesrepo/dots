###
# Ritzes' Personal .ZSHRC Configuration
###

# Set PATH to include user-defined binary directories
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.local/bin/"

# Set location of oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set oh-my-zsh theme
ZSH_THEME="mortalscumbag"

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load plugins
plugins=(git)
plugins+=(zsh-vi-mode)

# Load zsh-autosuggestions and zsh-syntax-highlighting plugins
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Define personal aliases
alias s="sudo"
alias v="lvim"
alias c="clear"
alias l="exa --group --git --icons --header --long --grid"
alias ld="exa -d --group --icons --header --long --grid"
alias glance="/home/mint/.local/bin/lvim /home/mint/Glance.org"
alias gh="cd /home/mint/"
# alias v="sudo lvim"

# Set vi-style navigation
set -o vi

# Show system info at startup
neofetch

# Welcome message
echo "Welcome to Konsole, /usr/bin/zsh shell, working in the /home/mint directory"
date +"Date : %d/%m/%Y Time : %H:%M:%S"
echo ""
