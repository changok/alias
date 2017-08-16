ttcssh() {
  aurora task ssh --tunnel_host=nest.smfc.twitter.com --command 'TERM=ansi PATH=./chruby/ruby/bin:${PATH} GEM_HOME=./chruby/ruby/lib/ruby/gems/2.2.0 GEM_PATH=./chruby/ruby/lib/ruby/gems/2.2.0 LD_LIBRARY_PATH=`pwd`/mysql/lib RAILS_ENV='$6' /bin/bash' $1/$2/$3/$4/$5 ${@:7}
}
mssh() {
  ttcssh smf1 translate prod translation-service ${1-0} production ${@:2}
}
assh() {
  ttcssh atla translate prod  translation-service${1-0} production ${@:2}
}
pssh() {
  ttcssh smf1 translate devel translation-service-${USER} 0 personal_staging ${@:1}
}
sssh() {
  ttcssh smf1 translate staging translation-service 0 staging ${@:1}
}

