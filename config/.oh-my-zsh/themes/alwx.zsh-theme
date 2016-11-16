#!/usr/bin/env bash
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function battery_charge {
    echo `~/bin/batcharge.sh`
}

function virtualenv_info {
    local virtualenv_path="$VIRTUAL_ENV"
    if [ -n "$virtualenv_path" ]; then
        echo '('`basename $VIRTUAL_ENV`') '
    fi
}


PROMPT='%{$fg[magenta]%}$(virtualenv_info)%{$reset_color%}%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}%{$fg_bold[black]%}:%{$reset_color%}%{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%} '

RPROMPT='$(battery_charge)'

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""