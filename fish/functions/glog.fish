# ~/.config/fish/functions/glog.fish
function glog --description "Pretty git log"
    git log --oneline --decorate --graph --all
end
