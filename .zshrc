autoload -U compinit
compinit

## LANGAGE ENVIRONMENT
#
# LANG
#
export LANG=ja_JP.UTF-8

## Default shell configuration
#
# set prompt
#
autoload colors
colors
 
case ${UID} in
0)
    PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') %{${fg[red]}%}%n@%m%#%{${reset_color}%} "
    PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    RPROMPT="%{${fg[green]}%}[%~:%T]%{${reset_color}%}"
    ;;
*)
    PROMPT="%{${fg[red]}%}%n@%m%%%{${reset_color}%} "
    PROMPT2="%{${fg[red]}%}%_%%%{${reset_color}%} "
    SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
    RPROMPT="%{${fg[green]}%}[%~:%T]%{${reset_color}%}"
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
    PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
    ;;
esac

##
#
# alias
#
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias minicpanm='cpanm --mirror ~/mirrors/minicpan --mirror-only'
alias minicpan-outdated='cpan-outdated | minicpanm'
alias pmuninstall='pm-uninstall'

##
#
# option
#
setopt auto_pushd

source /Users/mazkeng/perl5/perlbrew/etc/bashrc
