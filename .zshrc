###
# Ritzes' Personal .ZSHRC Configuration
###

# Set PATH to include user-defined binary directories
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin/:$PATH
# Set location of oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set oh-my-zsh theme
ZSH_THEME="mortalscumbag"


# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load plugins
plugins=(git)

# Load zsh-autosuggestions and zsh-syntax-highlighting plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh

# Set preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Fix ssh
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Define personal aliases
alias s="sudo"
alias v="nvim"
alias c="neofetch"
alias ls="exa --icons"
alias l="exa --group --git --icons --header --long --grid"
alias ld="exa -d --group --icons --header --long --grid"
alias glance="/home/mint/.local/bin/lvim /home/mint/Glance.org"
alias school="cd /home/mint/School"
alias home="cd /home/mint"
alias repo="cd /home/mint/Repositories"
alias config="cd /home/mint/.config"
alias cs="cd /home/mint/School/CS202/Scripts"
alias kali="sudo systemctl enable docker; sudo docker start kaliCP; sudo docker exec -it kaliCP bash"
# alias v="sudo lvim"

# Add zsh-vi-mode
plugins=(zsh-vi-mode)

# Use starship 
eval "$(starship init zsh)"

# Show system info at startup
neofetch

# Welcome message
# echo "Welcome to Konsole, /usr/bin/zsh shell, working in the /home/mint directory"
# date +"Date : %d/%m/%Y Time : %H:%M:%S"
# echo ""


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mint/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/mint/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mint/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/mint/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
