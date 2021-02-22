
echo 'Installing Custom Packages'

#Z
git clone https://github.com/rupa/z.git ~/z
chmod +x ~/z/z.sh

# Install Powerlevel10
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# nvm for node versioning
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# https://www.npmjs.com/package/trash
sudo npm install --global trash-cli

echo 'Running OSX Scripts'
# .osx from mathias
source .osx

echo 'Creating Symlinks'
#Shell script to symlink all files in the dotfiles folder
find ~/dotfiles -maxdepth 1 ! -name "CONFIGFILE" -exec ln -s \{\} ./ \;
rm -rf ~/.git
