# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

fortune

# exports

set -x PATH $PATH ~/bin
set -x PATH $PATH ~/code/activator
set -x PATH $PATH /usr/local/play-2.0
set -x PATH $PATH ~/.rvm/bin
set -x PATH $PATH /usr/local/heroku/bin
set -x PATH $PATH $COCOS_CONSOLE_ROOT
set -x PATH $PATH ~/code/depot_tools
set -x PATH $PATH $HOME/.composer/vendor/bin
set -x PATH $PATH $GOPATH/bin

set -x COCOS_CONSOLE_ROOT /Users/danielchao/Downloads/cocos2d-js-v3.1/tools/cocos2d-console/bin
set -x PGHOST localhost
set -x GOPATH ~/code/go
set -x NVM_DIR ~/.nvm
set -x NODE_PATH (npm config get prefix)/lib/node_modules


### FUNCTIONS

function ssh
  sshrc -i ~/.ssh/dan $argv
end

function header
  curl -I $argv
end

function ip
  ifconfig en0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
end


# Theme
set fish_theme robbyrussell

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
