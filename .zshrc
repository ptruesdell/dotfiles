# Path to your oh-my-zsh installation.
export ZSH=/Users/parkertruesdell/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#General aliases and functions

#create and go to created directory
function mkd() {
    mkdir -p "$@"
    cd "$@"
}

#cd and ls at the same time
function gg() {
    cd "$@"
    ls
}

#quicklook from terminal
function ql() {
    qlmanage -p "$*" >& /dev/null; 
}

#create file and then open it in vim
function touchv() {
    touch "$@"
    chmod 777 "$@"
    vim "$@"
}

alias all='ls -a'
alias ~='cd ~' #home directory shortcut
alias f='open -a Finder ./' #open Finder in current directory
alias gi='open http://www.github.com'
alias c='clear' #clear shortcut
alias ..='cd ..' #go back one directory level
alias ...='cd ../../' #go back 2 directory levels
alias .3='cd ../../../' #go back 3 directory levels
alias .4='cd ../../../../' #go back 4 directory levels
alias .5='cd ../../../../../' #go back 5 directory levels
alias reload='source ~/.bash_profile' #reload bash_profile
alias e-alias='vim ~/.aliases.sh' #edit aliases shortcut
alias qf='find . -name' #quickly search for file
alias chr="open -a /Applications/'Google Chrome.app'"
alias sleep='pmset sleepnow'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES;
    killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app'
#Permissions

#**********************************************#

#User defined vim aliases and functions

#pathogen install shortcut
function vbundle() {
    cd ~/.vim/bundle
    git clone "$@"
}

#edit vimrc shortcut
alias vimrc="vim ~/.dotfiles/.vimrc"