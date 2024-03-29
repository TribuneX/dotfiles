#zmodload zsh/zprof

source /Users/sbleidner/homebrew/opt/antidote/share/antidote/antidote.zsh
# required for sourcing enhancd
autoload -Uz compinit && compinit
source ~/dotfiles/zsh/.plugins.sh

source ~/dotfiles/zsh/options.zsh
source ~/dotfiles/zsh/alias.zsh
source ~/dotfiles/zsh/functions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(~/homebrew/bin/brew shellenv)"

source /Users/sbleidner/.docker/init-zsh.sh || true # Added by Docker Desktop
