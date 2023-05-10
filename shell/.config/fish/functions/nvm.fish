function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function asdf
  bass source $HOME/.asdf/asdf.sh ';' asdf $argv
end
