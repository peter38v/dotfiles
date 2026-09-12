function savetlog --description "Save tio session data to a file"
    # Check if argument is provided
    if test -z "$argv[1]"
        echo "Usage: save-tio-log <filename>"
        return 1
    end
    
    set -l log_file "$argv[1]"
    
    # macOS uses /tmp just like Linux
    # tio typically logs to /tmp/tio.log on macOS too
    if test -f /tmp/tio.log
        cp /tmp/tio.log "$log_file"
        echo "Saved tio log data to: $log_file"
        
        # For macOS, you might want to clear the log
        # echo "" > /tmp/tio.log
    else
        echo "Error: No tio log file found at /tmp/tio.log"
        echo "Make sure you're running tio with logging enabled:"
        echo "  tio -L /tmp/tio.log /dev/tty.usbserial-*"
        return 1
    end
end
