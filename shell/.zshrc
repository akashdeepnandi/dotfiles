export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
zsh-vi-mode
)

# fpath=(${ASDF_DIR}/completions $fpath)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if test -f "$HOME/.asdf/asdf.sh"; then
  . $HOME/.asdf/asdf.sh
fi


source ~/aliases
[ -s "$HOME/secrets" ] && source $HOME/secrets
# source ~/secrets
source ~/paths

eval "$(starship init zsh)"

if ! command -v starship &> /dev/null
then
  eval "$(starship init zsh)"
fi

