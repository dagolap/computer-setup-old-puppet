# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dagolap"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

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
#
# Dag Olav Custom
CASE_SENSITIVE="true"

emulate sh
. ~/.profile
emulate zsh

export PATH=$PATH:/usr/local/heroku/bin:/home/dagolap/.dnx/runtimes/dnx-mono.1.0.0-beta5/bin:/home/dagolap/.dnx/bin:~/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:~/.npm-global/bin:/home/dagolap/.npm-global/bin:/home/dagolap/bin:/home/dagolap/bin/go/bin:/home/dagolap/dev/go/bin:/home/dagolap/Android/Sdk/tools:/home/dagolap/Android/Sdk/tools

export PATH=$PATH:$HOME/bin/gradle-2.7/bin

export GRADLE_HOME=$HOME/bin/gradle-2.7
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev/python
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

export EDITOR='~/bin/emacsrun -nw -c -a ""'
alias emacs='emacsclient -nw -c -a ""'
alias e='emacsclient -nw -c -a ""'
alias ew='emacsclient -c -a ""'
