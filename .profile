test -r /sw/bin/init.sh && . /sw/bin/init.sh

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
# echo d|mail

export GOPATH="$HOME/work"

export NVM_DIR="/Users/admin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=/usr/local/bin:$PATH

source ~/.profile

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export LC_ALL=en_US.UTF-8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
export GH_TOKEN="5425fb08aa5a62b49a9810f4a630a47c6aa9da53"
