source ~/dotfiles/zsh/options.zsh
source ~/dotfiles/zsh/.plugins.sh # Use antibody
source ~/dotfiles/zsh/alias.zsh
source ~/dotfiles/zsh/functions.zsh



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(~/homebrew/bin/brew shellenv)"

source /Users/sbleidner/.docker/init-zsh.sh || true # Added by Docker Desktop
