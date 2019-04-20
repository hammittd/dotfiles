# vcs_info provides utilities for retrieving info from version control systems
autoload -Uz vcs_info
precmd() {
    vcs_info
}
setopt prompt_subst
PS1='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '

# if pwd = $HOME, replace with ~
#function collapse_pwd {
#    echo $(pwd | sed -e "s,^$HOME,~,") # sed substitute (s) can use things aside from / as delimited (e.g. the comma)
#}
#
#PS1='%F{green}%n%F{green}@%F{green}%m %F{white%}%~ %F{green}>%f '
#

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # Loads nvm bash_completion
# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi

export GOPATH=$HOME
export GOBIN=$GOPATH/bin
export PATH=$PATH:$(go env GOPATH)/bin

eval "$(rbenv init -)"

[[ -e ~/.aliases ]] && source ~/.aliases
