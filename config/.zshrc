# Path to your oh-my-zsh installation.
export ZSH=/Users/Alwx/.oh-my-zsh
export DYLD_LIBRARY_PATH=$DYLD_LIBARY_PATH:/usr/local/mysql/lib
export EDITOR=nano

ZSH_THEME="alwx"

# Check mail
MAILCHECK=0


# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python sudo vagrant virtualenvwrapper pip brew lol celery django fabric httpie osx)

# virtualenvwrapper allows to auto activate venv, override venv name if .venv exist

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/mysql/bin:/usr/local/sbin/"
export PATH=/usr/local/php5/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source "$HOME/.antigen/antigen.zsh"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias zshreload="source ~/.zshrc"

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias vup='vagrant up'
alias vre='vagrant resume'
alias vha='vagrant halt'
alias vsu='vagrant suspend'
alias vst='vagrant status'
alias vssh='vagrant ssh'
alias mongod='mongod --dbpath ~/mongo/data'


VIRTUAL_ENV_DISABLE_PROMPT=true

function omg_prompt_callback() {
    if [ -n "${VIRTUAL_ENV}" ]; then
        echo "\e[0;31m(`basename ${VIRTUAL_ENV}`)\e[0m "
    fi
}

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi