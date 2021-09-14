# # i3-gaps
# DIR="../i3-gaps/"
# if [ -d "$DIR" ]; then
#   echo "i3-gaps already exists"
#   cd ..
#   cd i3-gaps
#   git checkout gaps && git pull
#   autoreconf --force --install
#   rm -rf build
#   mkdir build
#   cd build
#   ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
#   make
#   sudo make install
#   cd ../..
#   cd FedoraSetup
# else 
#   # Take action if $DIR doesnt exists. #
#   # run script in dotfiles to create symlinks
#   echo "Cloning dotfiles.."
#   cd ..
#   git clone https://www.github.com/Airblader/i3 i3-gaps
#   cd i3-gaps
#   git checkout gaps && git pull
#   autoreconf --force --install
#   rm -rf build
#   mkdir build
#   cd build
#   ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
#   make
#   sudo make install
#   cd ../..
#   cd FedoraSetup
# fi
sudo dnf install i3-gaps -y --allowerasing