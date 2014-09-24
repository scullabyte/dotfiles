#Shell script to symlink all files in the dotfiles folder
find ~/dotfiles -maxdepth 1 ! -name "CONFIGFILE" -exec ln -s \{\} ./ \;
