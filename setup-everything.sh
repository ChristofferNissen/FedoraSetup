#!/bin/bash
set e
set x

# basic
./install_rpmfusion.sh
./install_commodities.sh

DIR="../dotfiles/"
if [ -d "$DIR" ]; then
  echo "dotfiles already exists"
  cd dotfiles
  ./create-symlinks.sh
  cd ..
  cd FedoraSetup
else 
  # Take action if $DIR doesnt exists. #
  # run script in dotfiles to create symlinks
  echo "Cloning dotfiles.."
  cd ..
  git clone git@github.com:ChristofferNissen/dotfiles.git
  echo "Installing config files in ${DIR}..."
  cd dotfiles
  ./create-symlinks.sh
  cd ..
  cd FedoraSetup
fi

./install_i3.sh

# i3-gaps
DIR="../i3-gaps/"
if [ -d "$DIR" ]; then
  echo "i3-gaps already exists"
  cd i3-gaps
  git checkout gaps && git pull
  autoreconf --force --install
  rm -rf build
  mkdir build
  cd build
  ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
  make
  sudo make install
  cd ..
  cd FedoraSetup
else 
  # Take action if $DIR doesnt exists. #
  # run script in dotfiles to create symlinks
  echo "Cloning dotfiles.."
  cd ..
  git clone https://www.github.com/Airblader/i3 i3-gaps
  cd i3-gaps
  git checkout gaps && git pull
  autoreconf --force --install
  rm -rf build
  mkdir build
  cd build
  ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
  make
  sudo make install
  cd ..
  cd FedoraSetup
fi

# Work Apps
./install_alacritty.sh
./install_slack.sh
./install_teams.sh
./install_vscode.sh
./install_1password.sh
./install_spotify.sh
./install_discord.sh
./install_zoom.sh
./install_forticlient.sh

# container tools
#./install_docker.sh
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

./install_ohmyzsh.sh 

#git config
./create-git-config.sh

echo "Please restart for updates to take effect, and switch to i3"
