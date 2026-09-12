function gcm --description "Git commit with message"
    if test (count $argv) -eq 0
        echo "Usage: gcm 'commit message'"
        return 1
    end
    git commit -m "$argv"
end
