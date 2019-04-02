# if pwd = $HOME, replace with ~
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,") # sed substitute (s) can use things aside from / as delimited (e.g. the comma)
}

PS1='%F{green}%n%F{green}@%F{green}%m %F{white%}%~ %F{green}>%f '


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # Loads nvm bash_completion
# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi

eval "$(rbenv init -)"

[[ -e ~/.aliases ]] && source ~/.aliases
