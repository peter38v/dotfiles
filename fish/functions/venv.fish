
# ~/.config/fish/functions/venv.fish
function venv --description "Python virtual environment helper"
    switch $argv[1]
        case create
            python3 -m venv $argv[2]
        case activate
            source $argv[2]/bin/activate.fish
        case deactivate
            deactivate
        case '*'
            echo "Usage: venv [create|activate|deactivate] [name]"
    end
end
