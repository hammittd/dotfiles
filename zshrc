PS1='%F{green}%n%F{green}@%F{green}%m %F{white}%/ %F{green}>%f '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # Loads nvm bash_completion

[[ -e ~/.aliases ]] && source ~/.aliases
