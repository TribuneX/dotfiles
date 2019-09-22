set fish_greeting

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set -gx  LC_ALL en_GB.UTF-8 

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

# Java developement

alias j11="jhome 11.0.3"
alias j8="jhome -v 1.8.0_222"
alias j7="jhome -v 1.7.0.232"

# Openshift
alias oadm="oc adm"

# DB
alias proxy="bash ~/dotfiles/scripts/startProxy.sh"
set SCRIPTS $IDE_WORKSPACE/dev-backend/scripts
set PATH $SCRIPTS/local $PATH
set PATH $SCRIPTS/docker $PATH



function startfor
        bash $SCRIPTS/docker/start-for-{$argv[1]}-service.sh
end

function stopfor
        bash $SCRIPTS/docker/stop-for-{$argv[1]}-service.sh
end

function testfor
        bash $SCRIPTS/local/it-{$argv[1]}.sh
end

function jhome
    set -g -x JAVA_HOME (/usr/libexec/java_home $argv)
    #echo "JAVA_HOME:" $JAVA_HOME
    #echo "java -version:"
    #java -version
end

funcsave jhome

# Set java 8 as default
j8
