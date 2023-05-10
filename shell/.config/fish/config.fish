if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path -p /usr/local/go/bin \
      $HOME/go/bin \
      $HOME/.local/go/bin \
      $HOME/.local/nvim/bin \
      $HOME/.local/bin \
      $HOME/scripts \
      $PATH $HOME/Android/Sdk $PATH \
      $ANDROID_HOME/tools \
      $HOME/.rbenv/bin:$PATH

    source $HOME/aliases

    set -Ux NIXPKGS_ALLOW_INSECURE 1
    set -Ux EDITOR nvim
    set -Ux EDITOR nvim
    set -Ux EDITOR nvim
    set -Ux EDITOR nvim

    # if test -e $HOME/fsecrets
    #   # source $HOME/secrets
    #   # eval (ssh-agent -s)
    # end

end
status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source
