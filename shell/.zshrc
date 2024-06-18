# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zinit setup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# shell integration
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# zoxide
if which zoxide >/dev/null; then
 eval "$(zoxide init zsh)"
fi

###########

# programming
# asdf setup
if test -f "$HOME/.asdf/asdf.sh"; then
  . $HOME/.asdf/asdf.sh
fi
fpath=(${ASDF_DIR}/completions $fpath)

# cargo
. "$HOME/.cargo/env"

# Nix
export NIXPKGS_ALLOW_INSECURE=1
if [ -e /home/akash/.nix-profile/etc/profile.d/nix.sh ]; then . /home/akash/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# erlang
export KERL_BUILD_DOCS="yes"
export KERL_CONFIGURE_OPTIONS="-with-ssl=/usr/local/ssl"

###########


# adding powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# add plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit ice depth=1; zinit light jeffreytse/zsh-vi-mode

# load zsh-completions
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons --color=always $realpath'


# aliases & paths
[ -s "$HOME/secrets" ] && source $HOME/secrets
source ~/aliases
source ~/paths
