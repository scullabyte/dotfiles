ZSH=$HOME/.oh-my-zsh

if [ -f ~/.aliases ]; then
   source ~/.aliases
else
   print ".alias file not found"
fi

alias bower='noglob bower'
alias dev="Drive/Development"
alias ns="Drive/Development/learning/nodeschool"
alias ls="ls -la"
alias tmux="TERM=screen-256color-bce tmux"
alias vim="mvim -v"
alias spotify="osascript ~/Drive/Scripts/SpotifyControl.scpt"
alias spot="osascript ~/Drive/Scripts/SpotifyControl.scpt play"
alias sp="osascript ~/Drive/Scripts/SpotifyControl.scpt play"
alias ss="osascript ~/Drive/Scripts/SpotifyControl.scpt pause"
alias sj="osascript ~/Drive/Scripts/SpotifyControl.scpt next"
alias sk="osascript ~/Drive/Scripts/SpotifyControl.scpt previous"
alias t="trash"
alias nw="~/node-webkit.app/Contents/MacOS/node-webkit"


alias vd="vim -p \`git diff --name-only\`"
export EDITOR=vim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8


# source ~/.bin/tmuxinator.zsh

#
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION  ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
