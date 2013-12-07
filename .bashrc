#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#PATH="/usr/local/bin/psql:$PATH"
#PATH="/usr/local/share/npm/bin/:$PATH"

#export RUBY_GC_MALLOC_LIMIT=1000000000
#export RUBY_FREE_MIN=500000
#export RUBY_HEAP_MIN_SLOTS=40000
#export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
#export RUBY_HEAP_SLOTS_INCREMENT=1000000

export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000

#source /tmp/git-completion.bash
#export PS1='\u@\h:[\033[0;35m]$(__git_ps1 "[%s]")[\033[0;32m]\w[\033[0m]$ '

# Customized configuration
# Face
RED='\[\e[1;31m\]'
WHITE='\[\e[1;37m\]'
YELLOW='\[\e[1;33m\]'
NORM='\[\e[0m\]'
GREEN='\[\e[1;32m\]'
PINK='\[\e[1;35m\]'

#FACE='\[\e[1;33m\]$(CODE=$?; if [ $CODE -eq 0 ]; then echo -e "\[\e[1;44m\]:-)"; elif [ $CODE -eq 146 ]; then echo -e "\[\e[1;44m\].zZ"; else echo -e "\[\e[1;41m\]:-("; fi)'
GIT_PS1='$(__git_ps1 " [%s]")'
#export PS1="\n$FACE$NORM \u@\h:$GREEN$GIT_PS1 $WHITE[\w]\n$RED> $NORM"
export PS1="$NORM\u@\h:$GREEN$GIT_PS1 $WHITE[\w]$RED$ $NORM"

export PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# setup java
export JAVA_TOOL_OPTIONS="-Dfile.encoding=utf8"
# Maven needs a lot of memory but doesn't ask for it by default.
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"

when() {
   history | grep -i $1 | grep -v when
}


ttcssh() {
  aurora ssh $1/$2/$3/translation-service $4 ${@:6} -- 'TERM=ansi rvm_path=./rvm LD_LIBRARY_PATH=`pwd`/mysql/lib RAILS_ENV='$5' ./rvm/bin/rvm-shell default'
}
mssh() {
  ttcssh smf1 translate prod ${1-0} production ${@:2}
}
assh() {
  ttcssh atla translate prod ${1-0} production ${@:2}
}
pssh() {
  ttcssh smf1 `whoami` devel 0 personal_staging ${@:1}
}
sssh() {
  ttcssh smf1 translate staging 0 staging ${@:1}
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
