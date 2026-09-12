function pwdcpy
    # Copy current directory path to clipboard
    pwd | fish_clipboard_copy
    
    # Provide feedback to the user
    echo "Copied current path to clipboard: "(pwd)
end
