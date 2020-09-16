#!/bin/bash
set e
set x

# basic
./install_rpmfusion.sh
./install_commodities.sh
./install_alacritty.sh
./install_slack.sh
./install_teams.sh
./install_vscode.sh
./install_1password.sh
./install_spotify.sh
./install_discord.sh
./install_zoom.sh
./install_forticlient.sh

# setup .dotnet repo
# if dir doesnt exist
DIR="./dotfiles/"
if [ -d "$DIR" ]; then
  # dont do anything
  echo "dotfiles already exists"
else 
  # Take action if $DIR doesnt exists. #
  # run script in dotfiles to create symlinks
  echo "Cloning dotfiles.."
  git clone git@github.com:ChristofferNissen/dotfiles.git
  echo "Installing config files in ${DIR}..."
  ./dotfiles/create-symlinks.sh
  ./install_i3.sh
fi

# container tools
./install_docker.sh
./install_k3sup.sh
./install_arkade.sh
./install_arkade_tools.sh
./install_faas-cli.sh

# Programming languages
# Dotnet core
./install_dotnetcore.sh
# Go
./install_go.sh
# Python
python --version
# Rust
sudo dnf install -y rust cargo
# Java 8 & 11
./install_java.sh
# Kotlin
# Scala
sudo dnf install -y scala
# F# [Already included in dotnet core]
# C

# final system update
./update.sh

./install_ohmyzsh.sh # fix config copy

#TODO
# Setup repo for vscode config
# Setup kubeconfig
# Setup zshrc
# git config
./create-git-config.sh
