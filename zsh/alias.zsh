# unix tools
alias cat="bat"
alias ls="exa"
alias readlink=greadlink

# brew
alias upgrade="bash ~/dotfiles/scripts/brew-upgrade.sh"

# git
alias gitclean="git branch --merged | grep -v master | xargs git branch -d"

alias doc="docker-compose"
