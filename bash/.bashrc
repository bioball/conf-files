### EXPORTS

export PATH=$PATH:~/bin                     # home bin
export PATH=$PATH:~/code/activator          # Typesafe Activator
export PATH=$PATH:/usr/local/play-2.0       # Play Framework
export PATH=$PATH:~/.rvm/bin                # RVM
export PATH=$COCOS_CONSOLE_ROOT:$PATH       # Cocos

### NAVIGATION

alias ls='ls -pG'                      # list files with color and add trailing backslash to folders
alias ll='ls -la'                      # list files with details
alias ..='cd ..'                       # go up a level
alias ~='cd ~'                         # go home
alias ~code='cd ~/code'                # go to code folder
alias grep='grep --color=auto'         # grep with color
alias c='clear'                        # clear terminal

### NETWORK HELPERS

alias header='curl -I'                 # show headers for a site
alias myip='curl ip.appspot.com'       # show my external IP address
find_pid () { lsof -t -c "$@" ; }      # find PID for a process name


### MISC

fortune                               # whatever this does

# for Visual Studio Code
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}