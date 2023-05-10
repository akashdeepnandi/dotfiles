# Instant Prompt, must stay at the top
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# OMZ init
export ZSH="$HOME/.oh-my-zsh"

# OMZ Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

plugins=(
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
zsh-vi-mode
git
)

source $ZSH/oh-my-zsh.sh


export EDITOR="nvim"

# fpath=(${ASDF_DIR}/completions $fpath)
autoload -U compinit && compinit

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# asdf 
if test -f "$HOME/.asdf/asdf.sh"; then
  . $HOME/.asdf/asdf.sh
fi

source ~/aliases
[ -s "$HOME/secrets" ] && source $HOME/secrets
source ~/paths

export PATH="$HOME/.rbenv/bin:$PATH"
if  type rbenv &> /dev/null
then
  eval "$(rbenv init -)"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. "$HOME/.cargo/env"

export NIXPKGS_ALLOW_INSECURE=1
unalias gb
# User configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
