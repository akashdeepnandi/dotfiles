# My git files
git clone https://github.com/akashdeepnandi/scripts
git clone --recurse-submodules --remote-submodules --depth 1 clone https://github.com/akashdeepnandi/dotfiles


# zsh shell setup
git clone https://github.com/jeffreytse/zsh-vi-mode \\n  $ZSH_CUSTOM/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf\n~/.fzf/install

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
nvm i --lts

# ubuntu packages
sudo apt install thunderbird
sudo apt install nala
sudo apt install exa timeshift vlc flameshot qbittorent
sudo apt install snapd
sudo apt install stow
sudo apt-get install ca-certificates curl gnupg lsb-release

#nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\\n ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hasklig.zip
mkdir -p ~/Downloads/Hasklig && unzip Hasklig.zip -d ~/Downloads/Hasklig
mkdir -p ~/.local/share/fonts
cp -r ~/Downloads/Hasklig ~/.local/share/fonts/
fc-cache -f -v

# manual installations
# 1. Docker Desktop
# 2. Slack
# 3. Discord
# 4. AnyDesk
# 5. Bitwarden
# chmod +x Bitwarden-2022.10.1-x86_64.AppImage
# mv Bitwarden-2022.10.1-x86_64.AppImage ~/.local/bin
# cd ~/.local/bin
# ./Bitwarden.AppImage --appimage-extract
# cd squashfs-root
# cp bitwarden.desktop ~/.local/share/applications
# update path setting before copy
# v ~/.local/share/applications/bitwarden.desktop
# 6. Android Studio
# 7. Google Chrome
# 8. nvim
# 9. lua
# 10. luarocks
# 11. Burp Suite
# 12. Insomnia
# 13. Dbeaever-ce
# 14. copyq
# 15. ulaunncer and extensions
# 16. zoom
# 17. vscode
# 18. jdk-java
# 19. tlpui
# 20. Megacmd
# sudo apt install autoconf libtool g++ libcrypto++-dev libz-dev libsqlite3-dev libssl-dev libcurl4-gnutls-dev libreadline-dev libpcre++-dev libsodium-dev libc-ares-dev libfreeimage-dev libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libmediainfo-dev libzen-dev libuv1-dev
# cd ~/Downloads
# git clone https://github.com/meganz/MEGAcmd.git\ncd MEGAcmd && git submodule update --init --recursive
# 21. golang
# 22. nix-shell

# make code structure
cd ~/
mkdir code
mkdir notes
cd code
mkdir boilerplate
mkdir projects
mkdir test
# ruby setup for tmuxinator
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | ba
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
sudo apt-get install build-essential
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
rbenv install 3.1.2
rbenv global 3.1.2
gem install tmuxinator
sudo wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator



# ssh setup
# setup secrets file
ssh-keygen -t ed25519 -C "adncorwin@gmail.com"
ssh-add ~/.ssh/id_ed25519

#java
JAVA_HOME=$(dirname $( readlink -f $(which java) ))\nJAVA_HOME=$(realpath "$JAVA_HOME"/../)\nexport JAVA_HOME
echo $JAVA_HOME

# lua and luarocks
# dowload lua
cd ~/Downloads
tar zxf lua-5.4.4.tar.gz
cd lua-5.4.4
make linux test
sudo make install

wget https://luarocks.org/releases/luarocks-3.9.1.tar.gz
tar zxpf luarocks-3.9.1.tar.gz
cd luarocks-3.9.1
./configure && make && sudo make install

# arc theme
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# brightness setup
sudo usermod -a -G video $USER
sudo apt install brightnessctl 

# git clone --recurse-submodules --remote-submodules --depth 1

# Lock screen
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
cd ~/Downloads
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./build.sh
./install-i3lock-color.sh
sudo apt install imagemagick
git clone https://github.com/dunst-project/dunst.git
cd dunst
make
sudo make install

# wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
# make betterlockscreenrc from its git and move it to ~/.config/betterscreenrc
# download the betterlockscreen tar
tar xf betterlockscreen-4.0.4.tar.gz
tar xf betterlockscreen-4.0.4.tar.gz
cd betterlockscreen-4.0.4
sudo cp betterlockscreen /usr/local/bin
sudo chmod +x /usr/local/bin/betterlockscreen
sudo cp system/betterlockscreen@.service /usr/lib/systemd/system/\nsudo systemctl enable betterlockscreen@$USER
betterlockscreen
betterlockscreen -u ~/.config/awesome/fantasy.png

# tlp
sudo apt install tlp
sudo systemctl enable tlp.service
cd ~/Downloads
sudo apt install python3-gi git python3-setuptools python3-stdeb dh-python
git clone https://github.com/d4nj1/TLPUI
cd TLPUI
python3 setup.py --command-packages=stdeb.command bdist_deb
sudo dpkg -i deb_dist/python3-tlpui_*all.deb

# rg and bat
sudo apt install ripgrep bat

# go install
cd ~/Downloads
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
go install golang.org/x/tools/gopls@latest
sudo apt-get install lxappearance
sudo apt-get install blueman
