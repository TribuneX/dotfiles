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

# Use zinit
source ~/.zinit/bin/zinit.zsh

# Load OMZ Git library
zinit ice wait lucid
zinit snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zinit ice wait atload"unalias grv" lucid
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::plugins/fzf/fzf.plugin.zsh
zinit load zsh-users/zsh-autosuggestions
zinit load zdharma/history-search-multi-word

# omz libs
zinit snippet OMZ::lib/directories.zsh
zinit snippet OMZ::lib/functions.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/grep.zsh

# enhancd
zinit light b4b4r07/enhancd

# Load theme
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
zstyle :prompt:pure:git:stash show yes

# Syntax highlighting plugin. Must be last.
zinit ice wait"0z" silent atinit"zpcompinit;zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

alias upgrade="bash ~/dotfiles/scripts/brew-upgrade.sh"

# Git aliases
alias gitclean="git branch --merged | grep -v master | xargs git branch -d"

# DB
alias proxy="bash ~/dotfiles/scripts/startProxy.sh"
alias db="bash ~/dotfiles/scripts/db.sh"
alias dns="bash ~/dotfiles/scripts/startDNS.sh"

export IDE_WORKSPACE="/Users/sbleidner/IdeaProjects/itemis/db_systel/sab_workspace"
export SCRIPTS="$IDE_WORKSPACE/dev-backend/scripts"
export PATH="$SCRIPTS/local:$PATH"
export PATH="$SCRIPTS/docker:$PATH"
export PATH="$SCRIPTS/ocp:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Alias
alias cat="bat"
alias ls="exa"

# switch Java versions
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
 }


