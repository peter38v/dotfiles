if status is-interactive
# Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim

set -Ux BROWSER /Applications/Firefox.app/Contents/MacOS/firefox

# Use eza for colored ls output
function ls
    eza -l --color=always --icons $argv
end

function l
    eza -l --color=always --icons $argv
end

function la
    eza -la --color=always --icons $argv
end

function ll
    eza -l --color=always --icons $argv
end

function lsa
    eza -la --color=always --icons $argv
end

# For tree view
function tree
    eza --tree --color=always --icons $argv
end
# Aliases

alias python 'python3'
alias e 'nvim'
alias c 'clear'
alias grep      'grep --color=auto'
alias tlog 'tio -L /tmp/tio.log'
alias apps 'cd /Applications'
alias lg 'lazygit'
zoxide init fish | source

##  Yazi Setup

