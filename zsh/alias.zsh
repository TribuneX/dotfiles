# unix tools
alias cat="bat"
alias ls="exa"

# brew
alias upgrade="bash ~/dotfiles/scripts/brew-upgrade.sh"

# git
alias gitclean="git branch --merged | grep -v master | xargs git branch -d"
