# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler cap gem git git-flow heroku osx powder rails rails3 rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH"

. ~/.zsh/prompt
. ~/.zsh/aliases
. ~/.zsh/git_aliases
. ~/.zsh/functions

# Use vim for EVERYTHING
export EDITOR="vim"
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

export BUNDLER_EDITOR="mvim"

# http://beginrescueend.com/integration/zsh/
# Fixes ~rvm_rvmrc_cwd in prompt
unsetopt auto_name_dirs

# No corrections because they're obnoxious and most of the time wrong
unsetopt correct_all

# Function for persisting SSH agent forwarding in a screen/tmux session after
# you've logged out and back into the server
#
# Source: http://www.tolaris.com/2011/07/12/reconnecting-your-ssh-agent-to-a-detached-gnu-screen-session/
# function reload_ssh_sock() {
#   export SSH_AUTH_SOCK=$(find /tmp/ssh-* -user `whoami` -name agent\* | tail -n 1)
# }

# Local machine-specific configuration
if [ -f ~/.zshrc_local ]; then
  . ~/.zshrc_local
fi
