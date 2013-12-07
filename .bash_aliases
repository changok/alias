alias ttcdev='vim ~/.tmux/ttcdev'

alias ttc='cd ~/workspace/translation-service'

alias lr='less -R'

alias hotkeys='cat ~/.bash_aliases'
alias sourceb='source ~/.bash_aliases'
alias editaliases='vim ~/.bash_aliases'

alias vi='vim'
alias v='vim'

alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias glm='gl --author=Changok'
alias gsh='git show --date=relative --color'
alias gd='git diff --color'
alias g='git grep --line-number'
alias gc='git commit'
alias gout='git checkout'
alias gs='git status'
alias gds='git diff --color --stat'
alias gst='git stash'
alias gstl='git stash list'
alias gb='git branch'
alias pull='git pull'
alias push='git push'
alias gbd='git branch -D'
alias gpr='git pull --rebase'
alias gm='git merge'
alias ga='git add'

alias gdm='git diff --color master'
alias gdsm='git diff --color --stat master'

alias s='rails s puma'
alias c='rails c'
alias db='rails db -p'
alias migrate='rake db:migrate && RAILS_ENV=test rake db:migrate'
alias rollback='rake db:rollback && RAILS_ENV=test rake db:rollback'

alias ll='ls -al'

alias swdown='swoosh shutdown'
alias sw='swoosh'
alias swset='swoosh setup'
alias swkill='swoosh kill'

alias sc='spring rails console'
alias sct='spring rails console test'
alias srstop='spring stop'
alias sr='spring rspec'
alias bm='bundle exec brakeman -z -w 2 -f html -o brakeman.html && echo \"passed\"'
alias ber='bundle exec rspec'
alias bi='bundle install'
alias pr='rescue rspec spec'

alias ruse='rvm use default'
alias review='rvm use ree && make_review --no-i18n && ruse'

alias log='tail log/test.log'
alias logf='tail -f log/test.log'
alias out='logout'

alias m='memcached'

alias gon='guard start -i -B -g livereload jasmine'

alias dflush='dscacheutil -flushcache'

alias tm='tmux'
alias ta='tmux attach-session'
alias tl='tmux list-windows'

alias guardon='guard start -i -B -g livereload jasmine'

alias mvn='\mvn -Pzinc'

alias tabs2spaces='column -t -s"        "'

alias o='open'

PEEK_LIMIT=10
PEEK_ORDER=desc

alias str='mtmux mssh 0 1 2 3 4 5 6 7'
alias testtruncate='RAILS_ENV=test spring rake db:reset db:migrate > /dev/null'

alias h='heroku'
