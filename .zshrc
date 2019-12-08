#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Customize to your needs...

# Enable history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_verify

source ~/.zplugin/bin/zplugin.zsh
# Load OMZ Git library
zplugin snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/autojump/autojump.plugin.zsh
zplugin load zdharma/history-search-multi-word

#zplugin cdclear -q # <- forget completions provided up to this moment

# Load theme
zplugin load yardnsm/blox-zsh-theme

# DB
alias proxy="bash ~/dotfiles/scripts/startProxy.sh"
alias proxon="bash ~/dotfiles/scripts/enableProxy.sh"
alias proxoff="bash ~/dotfiles/scripts/disableProxy.sh"
set SCRIPTS $IDE_WORKSPACE/dev-backend/scripts
set PATH $SCRIPTS/local $PATH
set PATH $SCRIPTS/docker $PATH
set PATH $SCRIPTS/ocp $PATH