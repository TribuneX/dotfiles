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

# Use zplugin
source ~/.zplugin/bin/zplugin.zsh

# Load OMZ Git library
zplugin ice wait lucid
zplugin snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zplugin ice wait atload"unalias grv" lucid
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh
zplugin load zsh-users/zsh-autosuggestions
zplugin load zdharma/history-search-multi-word

# omz libs
zplugin snippet OMZ::lib/directories.zsh
zplugin snippet OMZ::lib/functions.zsh
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::lib/grep.zsh

# enhancd
zplugin light b4b4r07/enhancd

# Load theme
zplugin load yardnsm/blox-zsh-theme

# Syntax highlighting plugin. Must be last.
zplugin ice wait"0z" silent atinit"zpcompinit;zpcdreplay"
zplugin light zdharma/fast-syntax-highlighting

# DB
alias proxy="bash ~/dotfiles/scripts/startProxy.sh"

export IDE_WORKSPACE="/Users/sbleidner/IdeaProjects/itemis/db_systel/sab_workspace"
export SCRIPTS="$IDE_WORKSPACE/dev-backend/scripts"
export PATH="$SCRIPTS/local:$PATH"
export PATH="$SCRIPTS/docker:$PATH"
export PATH="$SCRIPTS/ocp:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

## Alias
alias cat="bat"


startfor(){
        servicename=$1
        $SCRIPTS/docker/start-for-${servicename}-service.sh
}

stopfor(){
        servicename=$1
        $SCRIPTS/docker/stop-for-${servicename}-service.sh
}

testfor(){
        servicename=$1
        $SCRIPTS/local/it-${servicename}.sh
}


