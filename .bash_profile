# Add git branches and folder to terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# cd aliases
shopt -s cdable_vars
export cali=$HOME/Sites/CALI/CAJA
export dat=$HOME/Sites/a2jStandalone/a2j-dat

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PS1="\[\033[33;1m\][\W]\[\033[0;31m\]\$(parse_git_branch)\[\033[m\] $ "
export GOROOT=/usr/local/opt/go/libexec;
export GOPATH=$HOME/go
export SENTIM=befc143b-8f4a-4ab3-b2e5-152f07e32fc4
PATH=$PATH:$GOPATH/bin;
PATH=$PATH:$GOROOT/bin;
export PATH
# used by sublimelinter to bashrc 
case $- in
  *i*) source ~/.bashrc
esac

export PATH=$PATH:/Users/mitchel/bin
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

