export ZSH="/home/akash/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
git
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
zsh-vi-mode
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


source ./aliases
source ./secrets
source ./paths

eval "$(starship init zsh)"

fortune | cowsay | lolcat
