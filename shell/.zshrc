export ZSH="$HOME/.oh-my-zsh"

# OMZ Theme
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

plugins=(
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# asdf 
if test -f "$HOME/.asdf/asdf.sh"; then
  . $HOME/.asdf/asdf.sh
fi

export EDITOR="nvim"

# fpath=(${ASDF_DIR}/completions $fpath)
autoload -U compinit && compinit

# source setup files
[ -s "$HOME/secrets" ] && source $HOME/secrets
source ~/aliases
source ~/paths

# Rush
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. "$HOME/.cargo/env"

# Nix

export NIXPKGS_ALLOW_INSECURE=1
# if [ -e /home/akash/.nix-profile/etc/profile.d/nix.sh ]; then . /home/akash/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

if which starship >/dev/null; then
  eval "$(starship init zsh)"
fi
