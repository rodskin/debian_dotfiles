#!/bin/bash

#echo -e "${green}************************************************${default}"
#echo -e "${green}* INSTALATION DES LOGICIELS${default}"
#echo -e "${green}************************************************${default}"
#while read in
#do  
#    dot_mes_install ${in}
#    sudo apt install -y "$in"
#done < programs

############
# KEYBOARD #
############
sudo cp "$DOTFILES/keyboard/keyboard" /etc/default/keyboard
setxkbmap -option "ctrl:swapcaps" # swap caps lock and ctrl

########
# nvim #
########
mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
#ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"
ln -sf "$DOTFILES/nvim_lua/init.lua" "$XDG_CONFIG_HOME/nvim"

# install neovim plugin manager
[ ! -f "$DOTFILES/nvim/autoload/plug.vim" ] \
    && curl -fLo "$DOTFILES/nvim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p "$XDG_CONFIG_HOME/nvim/autoload"
ln -sf "$DOTFILES/nvim/autoload/plug.vim" "$XDG_CONFIG_HOME/nvim/autoload/plug.vim"

# Install (or update) all the plugins
nvim --noplugin +PlugUpdate +qa

# vim-dadbod
mkdir -p "$HOME"/.db_ui

#######
# X11 #
#######
rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

######
# i3 #
######
rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"
rm -rf "$XDG_CONFIG_HOME/i3blocks"
ln -s "$DOTFILES/i3blocks" "$XDG_CONFIG_HOME"

#######
# ZSH #
#######
sudo mkdir -p /usr/share/fzf
sudo wget -P /usr/share/fzf https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh
sudo wget -P /usr/share/fzf https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh
mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

#######
# Git #
#######
ln -sf "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"

#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########
# Dunst #
#########
mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"

########
# tmux #
########
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

########
# khal #
########
mkdir -p "$XDG_CONFIG_HOME/khal"
ln -sf "$DOTFILES/khal/config" "$XDG_CONFIG_HOME/khal/config"

#########
# Scrot #
#########
mkdir -p "$HOME/screenshots"

################
# Php CS Fixer #
################
# https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/master/doc/installation.rst
#wget https://cs.symfony.com/download/php-cs-fixer-v3.phar -O php-cs-fixer
#sudo chmod a+x php-cs-fixer
#sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer
#
##########
# NodeJS #
##########
#nvim +CocInstall coc-json coc-css coc-html coc-phpls coc-go coc-git coc-pyls +qa


########
# MISC #
########
#sudo vim /etc/docker/daemon.js
