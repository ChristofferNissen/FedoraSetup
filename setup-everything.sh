#!/bin/bash

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

# container
./install_docker.sh
./install_k3sup.sh
./install_arkade.sh
./install_arkade_tools.sh
./install_faas-cli.sh

# programming languages

# Dotnet core
./install_dotnetcore.sh
# Go
./install_go.sh
# Python
python --version
# Rust
# Java 8 & 11
./install_java.sh
# Kotlin

# final system update
./update.sh

./install_ohmyzsh.sh # fix config copy