# unix tools
alias cat="bat"
alias ls="exa"

# Easier navigation
# alias .="cd -" # Go back to previous dir
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# wiki
alias wiki="cd '/Users/sbleidner/Library/Mobile Documents/com~apple~CloudDocs/knowlege-wiki'"

# brew
alias upgrade="bash ~/dotfiles/scripts/brew-upgrade.sh"

# git
alias gitclean="git branch --merged | grep -v master | xargs git branch -d"

# docker-compose
alias dc="docker-compose"
