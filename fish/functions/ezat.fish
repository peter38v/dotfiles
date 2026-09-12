function ezat
    # Default depth if not specified
    set -l depth 2
    
    # Check if a depth argument was provided
    if set -q argv[1]
        # Validate that it's a positive integer
        if test "$argv[1]" -gt 0 2>/dev/null
            set depth $argv[1]
        else
            echo "Error: Depth must be a positive integer" >&2
            echo "Usage: ezat [depth] [directory]" >&2
            return 1
        end
    end
    
    # Get optional directory argument
    set -l target_dir "."
    if set -q argv[2]
        set target_dir $argv[2]
    else if set -q argv[1]
        # If first arg is not a number, treat it as directory
        if not test "$argv[1]" -gt 0 2>/dev/null
            set target_dir $argv[1]
            set depth 2  # Reset to default depth
        end
    end
    
    # Run eza with tree and depth limit
    eza --tree --level=$depth $target_dir
end
