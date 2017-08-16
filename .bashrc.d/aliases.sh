alias less="less -S"
alias polly='cd ~/workspace/polly'
#alias ls='ls -hF --group-directories-first --color=auto --sort=extension'

alias repl='RAILS_ENV=test bundle exec rspec spec/repl.rb'
alias srepl='RAILS_ENV=test spring rspec spec/repl.rb'

alias psgrep="ps aux |grep "

alias sstr="mtmux smissh 0 1 2 3 4 5 6 7 8 9 10 11"
alias astr="mtmux amissh 0 1 2 3 4 5 6 7 8 9 10 11"

alias runzinc='zinc -start -J"-Xmx4G"'

alias kujaku='cd ~/workspace/source/birdcage/kujaku'
alias koala='cd ~/workspace/koalabird-alerts/'
alias bird='cd ~/workspace/source/birdcage'

#alias mssh="mesos ssh smf1/translate/prod/translation-service 0"
#alias pssh="mesos ssh smf1/ckim/devel/translation-service 0"

alias wat='rbwhat'
#alias read-only-tunnel='ssh -N -f -L3307:db-hat-ro-app-001.smf1.twitter.com:3306 -l ckim nest1.twitter.biz'
alias ttcdev='vim ~/.tmux/ttcdev'

alias ttc='cd ~/workspace/translation-service'
alias kujaku='cd ~/workspace/source/kujaku'
alias mi='cd ~/workspace/source/macaw-international'

alias lr='less -R'

alias hotkeys='cat ~/.bashrc.d/aliases.sh'
alias sourceb='source ~/.bashrc.d/aliases.sh'
alias editaliases='vim ~/.bashrc.d/aliases.sh'

alias vi='vim'
alias v='vim'

alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias glm='gl --author=Changok'
alias gsh='git show --date=relative --color'
alias gd='git diff --color'
alias gdc='git diff --color --cached'
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


alias s='RAILS_ENV=development TTC_USER_ID=137965590 bundle exec rails s'
alias c='bundle exec rails c'
alias dp='bundle exec rails db'
alias migrate='bundle exec rake db:migrate && RAILS_ENV=test bundle exec rake db:migrate'
alias populate='bundle exec rake db:populate'
alias rollback='bundle exec rake db:rollback && RAILS_ENV=test bundle exec rake db:rollback'

alias ttcproddb='mycli --user=$USER --database=translation_service_prod --host=127.0.0.1 --port=3307'
alias pollyproddb='mycli --user=$USER --database=polly_prod --host=127.0.0.1 --port=3307'

alias ll='ls -al'

alias swdown='swoosh shutdown'
alias sw='swoosh'
alias swset='swoosh setup'
alias swkill='swoosh kill'

alias srstop='RAILS_ENV=test spring stop'
alias sr='RAILS_ENV=test spring rspec'
alias bm='bundle exec brakeman -z -w 2 -f html -o brakeman.html && echo \"passed\"'
alias runbrakeman='bundle exec brakeman --skip-files app/views/forem/posts/_post.html.erb,app/controllers/engineer/import_controller.rb,app/models/import.rb -z -w 2'
alias be='bundle exec'
alias ber='RAILS_ENV=test bundle exec rspec'
alias bi='bundle install'
alias pr='rescue rspec spec'

alias ruse='rvm use default'
#alias review='rvm use ree && make_review --no-i18n && ruse'
alias review='rvm use ruby-1.8.7-p374 && make_review --no-i18n --no-publish && rvm use . || ruse'

alias log='tail log/test.log'
alias logf='tail -f log/test.log'
alias gocapy='open ~/translation-service/tmp/capybara'
alias out='logout'

alias gosweb1='ssh sweb1'
alias gosweb2='ssh sweb2'
alias gosweb3='ssh sweb3'
alias gosweb4='ssh sweb4'
alias gosweb5='ssh sweb5'

alias m='memcached'


alias gon='guard start -i -B -g livereload jasmine'

alias dflush='dscacheutil -flushcache'

alias tm='tmux'
alias ta='tmux attach-session'
alias tl='tmux list-windows'

alias guardon='guard start -i -B -g livereload jasmine'

alias mvn='\mvn -Pzinc'

alias tabs2spaces='column -t -s"	"'

alias o='open'

alias str='mtmux mssh 0 1 2 3 4 5 6 7'
alias testtruncate='RAILS_ENV=test spring rake db:reset db:migrate > /dev/null'

alias h='heroku'

alias gostamp='cd ~/workspace/gostamp'
alias twitter='cd ~/workspace/twitter'
alias alumfi='cd ~/workspace/alumfi'

alias capp='cap production'
alias caps='cap staging'
alias amssh='ssh deploy@alumfi.com'
alias asssh='ssh deploy@staging.alumfi.com'
when() {
   history | grep -i $1 | grep -v when | tail -r | less
}

