# .osx from mathias
source .osx

#Z
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/z/z.sh
chmod +x ./brew.sh

# Taken from Paul Irish
# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
git clone https://github.com/thebitguru/play-button-itunes-patch
git clone git://github.com/dronir/SpotifyControl.git

# N for node versioning
sudo npm install -g n

# https://github.com/jamiew/git-friendly
bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

