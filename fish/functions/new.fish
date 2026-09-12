function new --description "Make a new file (touch) and open it with neovim"
    touch $argv[1] && nvim $argv[1]
end
    
