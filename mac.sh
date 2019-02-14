#! /usr/bin/env bash

# Configure Homebrew directory
HOMEBREW_PREFIX="/usr/local"

if [ -d "$HOMEBREW_PREFIX" ]; then
    if ! [ -r "$HOMEBREW_PREFIX" ]; then
        sudo chown -R "$LOGNAME:admin" /usr/local
    fi
else
    sudo mkdir "$HOMEBREW_PREFIX"
    sudo chflags norestricted "$HOMEBREW_PREFIX"
    sudo chown -R "$LOGNAME:admin" "$HOMEBREW_PREFIX"
fi

# Update Shell
update_shell() {
    local shell_path;
    shell_path="$(command -v zsh)"

    echo "Updating shell to zsh..."
    if ! grep "$shell_path" /etc/shells > /dev/null 2>&1 ; then
        echo "Adding '$shell_path' to etc/shells"
        sudo sh -c "echo $shell_path >> /etc/shells"
    fi
    sudo chsh -s "$shell_path" "$USER"
}

case "$SHELL" in
    */zsh)
        if [ "$(command -v zsh)" != '/usr/local/bin/zsh' ] ; then
            update_shell
        fi
        ;;
    *)
        update_shell
        ;;
esac

# Install Homebrew
if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    curl -fsS \
        'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
    export PATH="/usr/local/bin:$PATH"
fi

if brew list | grep -Fq brew-cask; then
    echo "Uninstalling old Homebrew-cask..."
    brew uninstall --force brew-cask
fi

echo "Updating Homebrew formulas..."
brew update --force
brew bundle --file=- <<EOF
tap "thoughtbot/formulae"
tap "homebrew/services"
tap "universal-ctags/universal-ctags"
tap "caskroom/cask"
tap "heroku/brew"

brew "universal-ctags", args: ["HEAD"]
brew "git"
brew "openssl"
brew "rcm"
brew "reattach-to-user-namespace"
brew "the_silver_searcher"
brew "tmux"
brew "vim"
brew "watchman"
brew "zsh"

brew "heroku/brew/heroku"
brew "parity"
brew "hub"

# Image Manipulation
brew "imagemagick"

# Package Managers, Language Prereqs
brew "libyaml"
brew "coreutils"
brew "yarn"
cask "gpg-suite"

# Databases
brew "postgres", restart_service: :changed
brew "redis", restart_service: :changed
EOF

echo "Updating heroku binary..."
brew unlink heroku
brew link --force heroku

