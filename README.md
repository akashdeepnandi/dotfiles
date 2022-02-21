# Dotfiles

- This is a dedicated repo for all the dotfiles used in my system.
- Some of them are cross platform, but mostly the tools I use are GNU/Linux biased.
- The dotfiles are linked the GNU utility stow.

## Prerequisites:

Some of them are optional, depending on use case:
- stow - most important used for linking the dotfiles
- alacritty
- zsh
  - starship
  - omz
  - autosuggestions
  - autocompletion
  - syntax-highlighting
  - lolcat
  - fortune
  - cowsay
- awesome
  - awesome-wm-widgets
  - xbindkey
  - ulauncher
- nvim
  - vim-plug
- tmux

## Usage

Fresh install setup,

```
stow *
```

For setting up individual program, say alacritty

```
stow alacritty
```
