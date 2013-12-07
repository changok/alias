export PATH=/usr/local/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source ~/.bashrc
source ~/.bash_aliases

export PATH=~/bin:$PATH

# will be deprecated once it's moved or deleted
export PATH=~/Downloads/adt-bundle-mac-x86_64-20130522/sdk/build-tools:$PATH
export PATH=~/Downloads/adt-bundle-mac-x86_64-20130522/sdk/tools:$PATH
export PATH=~/Downloads/adt-bundle-mac-x86_64-20130522/sdk/platform-tools:$PATH
export PATH=/usr/local/sbin:$PATH

source "$HOME/.tools-cache/setup-dottools-path.sh"
#`zinc -nailed`
