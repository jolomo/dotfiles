HISTFILE=~/.zshist

setopt allexport append_history automenu interactivecomments \
       extendedglob correctall nobanghist histignoredups noclobber \
       sunkeyboardhack

# vi key bindings
bindkey -v

# Must be set to save history
HISTSIZE=600
SAVEHIST=600

#TMOUT=300

# prompt of name@host:pwd>                                     time
PROMPT="%n@%m:%C>"
RPROMPT='%t'

case $MANPATH in
  *local*)  :
            ;;
  *) MANPATH=$MANPATH:/usr/local/man:/usr/man:/usr/local/news/man:$HOME/man
            ;;
esac

case $PATH in
  *games*)  :
            ;;
  *) PATH=$PATH:/usr/games:$HOME/bin
            ;;
esac
PATH=$HOME/bin:$PATH

PAGER=less
LESS="-z15 -c -i -M -s" 

export MANPATH
EDITOR=vim
VISUAL=vim
alias vi=vim
alias mm=m
#alias dig="dig +search"
########alias elm=elm.1

alias ls='ls -F'

# set up project management functions and term settings in new shell
#if ! whence p1 ; then
#  . ~/.Proj/proj_main
#fi

TZ=EST5EDT
# tin stuff
ORGANIZATION="Bozo Central in Atlanta"
#REPLYTO=joe@jolomo.net
export REPLYTO ORGANIZATION

#find . -name core -exec rm {} \; &
#limit coredumpsize 0
#stty erase 

alias whois='whois -h whois.networksolutions.com'
