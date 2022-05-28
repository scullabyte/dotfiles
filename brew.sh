#!/usr/bin/env bash
 
# Install command-line tools using Homebrew.
 
# Ask for the administrator password upfront.
sudo -v
 
# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
 
# Make sure we’re using the latest Homebrew.
brew update
 
# Upgrade any already-installed formulae.
brew upgrade
 
# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
arch -arm64 brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
 
# Install some other useful utilities like `sponge`.
arch -arm64 brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
arch -arm64 brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
arch -arm64 brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
arch -arm64 brew install bash
arch -arm64 brew install bash-completion
# Install `wget` with IRI support.
arch -arm64 brew install wget --with-iri
 
# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
arch -arm64 brew install ringojs
arch -arm64 brew install narwhal
 
# Install more recent versions of some OS X tools.
arch -arm64 brew install vim --override-system-vi
# Install cmake for YouCompleteMe (vim) and compiling C-family languages
arch -arm64 brew install cmake
arch -arm64 brew install homebrew/dupes/grep
arch -arm64 brew install homebrew/dupes/openssh
arch -arm64 brew install homebrew/dupes/screen
arch -arm64 brew install homebrew/php/php55 --with-gmp
 
# Install some CTF tools; see https://github.com/ctfs/write-ups.
arch -arm64 brew install tmux
arch -arm64 brew install macvim
arch -arm64 brew install tmux-pasteboard
arch -arm64 brew install ag
arch -arm64 brew install reattach-to-user-namespace
arch -arm64 brew install bfg
arch -arm64 brew install binutils
arch -arm64 brew install binwalk
arch -arm64 brew install cifer
arch -arm64 brew install dex2jar
arch -arm64 brew install dns2tcp
arch -arm64 brew install fastlane
arch -arm64 brew install fcrackzip
arch -arm64 brew install foremost
arch -arm64 brew install hashpump
arch -arm64 brew install hydra
arch -arm64 brew install john
arch -arm64 brew install knock
arch -arm64 brew install nmap
arch -arm64 brew install pngcheck
arch -arm64 brew install powerlevel9k
arch -arm64 brew install socat
arch -arm64 brew install sqlmap
arch -arm64 brew install tcpflow
arch -arm64 brew install tcpreplay
arch -arm64 brew install tcptrace
arch -arm64 brew install ucspi-tcp # `tcpserver` etc.
arch -arm64 brew install xpdf
arch -arm64 brew install xz
 
# Install other useful binaries.
arch -arm64 brew install ack
#arch -arm64 brew install exiv2
arch -arm64 brew install git
arch -arm64 brew install git-extras
arch -arm64 brew install git-flow
arch -arm64 brew install imagemagick --with-webp
arch -arm64 brew install lua
arch -arm64 brew install lynx
arch -arm64 brew install p7zip
arch -arm64 brew install pigz
arch -arm64 brew install pv
arch -arm64 brew install rename
arch -arm64 brew install rhino
arch -arm64 brew install speedtest_cli
arch -arm64 brew install tree
arch -arm64 brew install webkit2png
arch -arm64 brew install zopfli
arch -arm64 brew install postgresql
arch -arm64 brew install chruby ruby-install

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
# arch -arm64 brew install node
 
# Remove outdated versions from the cellar.
brew cleanup
