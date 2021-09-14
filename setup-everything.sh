#!/bin/bash
# set e
# set x

cat << "EOF" 
 _____        _                 
|  ___|__  __| | ___  _ __ __ _ 
| |_ / _ \/ _` |/ _ \| '__/ _` |
|  _|  __/ (_| | (_) | | | (_| |
|_|  \___|\__,_|\___/|_|  \__,_|
                                
 ___           _        _ _       _   _             
|_ _|_ __  ___| |_ __ _| | | __ _| |_(_) ___  _ __  
 | || '_ \/ __| __/ _` | | |/ _` | __| |/ _ \| '_ \ 
 | || | | \__ \ || (_| | | | (_| | |_| | (_) | | | |
|___|_| |_|___/\__\__,_|_|_|\__,_|\__|_|\___/|_| |_|
EOF
./install_rpmfusion.sh

cat << "EOF" 
 ____            _                   __ _                          
| __ )  __ _ ___(_) ___   ___  ___  / _| |___      ____ _ _ __ ___ 
|  _ \ / _` / __| |/ __| / __|/ _ \| |_| __\ \ /\ / / _` | '__/ _ \
| |_) | (_| \__ \ | (__  \__ \ (_) |  _| |_ \ V  V / (_| | | |  __/
|____/ \__,_|___/_|\___| |___/\___/|_|  \__| \_/\_/ \__,_|_|  \___|

EOF
./install_commodities.sh
./install_alacritty.sh
./install_vscode.sh
./install_1password.sh
./install_forticlient.sh
./install_spotify.sh
./install-githubcli.sh

cat << "EOF" 
  ____                _   _             
 / ___|_ __ ___  __ _| |_(_)_ __   __ _ 
| |   | '__/ _ \/ _` | __| | '_ \ / _` |
| |___| | |  __/ (_| | |_| | | | | (_| |
 \____|_|  \___|\__,_|\__|_|_| |_|\__, |
                                  |___/ 
                     _ _       _        
 ___ _   _ _ __ ___ | (_)_ __ | | _____ 
/ __| | | | '_ ` _ \| | | '_ \| |/ / __|
\__ \ |_| | | | | | | | | | | |   <\__ \
|___/\__, |_| |_| |_|_|_|_| |_|_|\_\___/
     |___/                   
EOF

DIR="../dotfiles/"
if [ -d "$DIR" ]; then
  echo "dotfiles already exists"
  cd ../dotfiles
  git pull
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

cat << "EOF" 
 _ _____ 
(_)___ / 
| | |_ \ 
| |___) |
|_|____/ 
         
EOF
./install_i3.sh

# i3-gaps dependencies
sudo dnf install libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git gcc automake i3status i3lock

./install_i3-gaps.sh

cat << "EOF" 
  ____                                      _           _   _             
 / ___|___  _ __ ___  _ __ ___  _   _ _ __ (_) ___ __ _| |_(_) ___  _ __  
| |   / _ \| '_ ` _ \| '_ ` _ \| | | | '_ \| |/ __/ _` | __| |/ _ \| '_ \ 
| |__| (_) | | | | | | | | | | | |_| | | | | | (_| (_| | |_| | (_) | | | |
 \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|_|\___\__,_|\__|_|\___/|_| |_|
EOF
./install_slack.sh
./install_teams.sh
./install_discord.sh
./install_zoom.sh

cat << "EOF" 
  ____            _        _                 _          _   _             
 / ___|___  _ __ | |_ __ _(_)_ __   ___ _ __(_)______ _| |_(_) ___  _ __  
| |   / _ \| '_ \| __/ _` | | '_ \ / _ \ '__| |_  / _` | __| |/ _ \| '_ \ 
| |__| (_) | | | | || (_| | | | | |  __/ |  | |/ / (_| | |_| | (_) | | | |
 \____\___/|_| |_|\__\__,_|_|_| |_|\___|_|  |_/___\__,_|\__|_|\___/|_| |_|
EOF
./install_docker.sh
./install_k3sup.sh
./install_arkade.sh
./install_arkade_tools.sh
./install_faas-cli.sh

cat << "EOF" 
 _                                                  
| |    __ _ _ __   __ _ _   _  __ _  __ _  ___  ___ 
| |   / _` | '_ \ / _` | | | |/ _` |/ _` |/ _ \/ __|
| |__| (_| | | | | (_| | |_| | (_| | (_| |  __/\__ \
|_____\__,_|_| |_|\__, |\__,_|\__,_|\__, |\___||___/
                  |___/             |___/           
EOF
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

cat << "EOF" 
                 _       _       
 _   _ _ __   __| | __ _| |_ ___ 
| | | | '_ \ / _` |/ _` | __/ _ \
| |_| | |_) | (_| | (_| | ||  __/
 \__,_| .__/ \__,_|\__,_|\__\___|
      |_|                        
EOF

# final system update
./update.sh

cat << "EOF" 
       _                                 _     
  ___ | |__    _ __ ___  _   _   _______| |__  
 / _ \| '_ \  | '_ ` _ \| | | | |_  / __| '_ \ 
| (_) | | | | | | | | | | |_| |  / /\__ \ | | |
 \___/|_| |_| |_| |_| |_|\__, | /___|___/_| |_|
                         |___/                 
EOF
./install_ohmyzsh.sh 


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


cat << "EOF" 
  ____ _ _                      __ _       
 / ___(_) |_    ___ ___  _ __  / _(_) __ _ 
| |  _| | __|  / __/ _ \| '_ \| |_| |/ _` |
| |_| | | |_  | (_| (_) | | | |  _| | (_| |
 \____|_|\__|  \___\___/|_| |_|_| |_|\__, |
                                     |___/ 
EOF
#git config
./create-git-config.sh

cat << "EOF" 
 ____  _____ ____ _____  _    ____ _____ 
|  _ \| ____/ ___|_   _|/ \  |  _ \_   _|
| |_) |  _| \___ \ | | / _ \ | |_) || |  
|  _ <| |___ ___) || |/ ___ \|  _ < | |  
|_| \_\_____|____/ |_/_/   \_\_| \_\|_|  
                                         
 ____  _____ ___  _   _ ___ ____  _____ ____  
|  _ \| ____/ _ \| | | |_ _|  _ \| ____|  _ \ 
| |_) |  _|| | | | | | || || |_) |  _| | | | |
|  _ <| |__| |_| | |_| || ||  _ <| |___| |_| |
|_| \_\_____\__\_\\___/|___|_| \_\_____|____/ 
EOF
echo ""
echo "Please restart for updates to take effect, and switch to i3"
""
