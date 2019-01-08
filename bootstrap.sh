echo 'Creating Symlinks'
#Shell script to symlink all files in the dotfiles folder
find ~/dotfiles -maxdepth 1 ! -name "CONFIGFILE" -exec ln -s \{\} ./ \;
rm -rf ~/.git

echo 'Installing Custom Packages'
#Z
git clone https://github.com/rupa/z.git
chmod +x ~/z/z.sh

# Taken from Paul Irish
# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
git clone https://github.com/thebitguru/play-button-itunes-patch

git clone git://github.com/dronir/SpotifyControl.git

# ZSH Powerline Theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k


# nvm for node versioning
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# https://www.npmjs.com/package/trash
sudo npm install --global trash-cli

echo 'Installing Brew Packages'
source ./brew.sh

echo 'Running OSX Scripts'
# .osx from mathias
source .osx
