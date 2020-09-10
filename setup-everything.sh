#!/bin/bash

# basic
./install_commodities.sh
./install_alacritty.sh
./install_slack.sh
./install_teams.sh
./install_vscode.sh
./install_1password.sh
./install_ohmyzsh.sh # fix config copy
./install_spotify.sh
./install_discord.sh

# container
./install_docker.sh
./install_k3sup.sh
./install_faas-cli.sh
./install_arkade.sh
./install_arkade_tools.sh

# programming languages


# final system update
./update.sh
