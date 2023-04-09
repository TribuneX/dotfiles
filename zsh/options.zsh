# Completions
autoload -Uz compinit && compinit

# Matches are case insensitive
zstyle ':completion:*' matcher-list 'm:{A-Za-z}={a-zA-Z}'

# History
HISTSIZE=100000 # Lines of history to keep in memory for current session
HISTFILESIZE=10000 # Number of commands to save in the file
SAVEHIST=$HISTSIZE # Number of history entries to save to disk
HISTFILE=~/.zsh_history # Where to save history to disk
HISTDUP=erase # Erase duplicates in the history file
setopt hist_ignore_dups # Ignore duplicates

# Options `man zshoptions`
setopt append_history # Append history to the history file (no overwriting)
setopt share_history # Share history across terminals
setopt inc_append_history # Immediately append to the history file, not just when a term is killed
setopt extended_glob # Use extended globbing syntax
setopt auto_cd # Auto change to a dir without typing cd
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_verify
