function fz
    set -l result (fd -IH -E .nv -E .bun -E .wine | fzf -m --expect=enter,ctrl-e,ctrl-s,ctrl-y,ctrl-r)
    test -z "$result"; and return

    set -l key $result[1]
    set -e result[1]

    switch $key
        case enter
            set -l has_dir 0

            for r in $result
                if test -d "$r"
                    set has_dir 1
                    break
                end
            end

            open $result
            if test $has_dir -eq 0
                exit
            end

        case ctrl-e
            nvim $result

        case ctrl-s
            for r in $result
                if test -d "$r"
                    cd "$r"
                    return
                end
            end

            cd (dirname "$result[1]")

        case ctrl-y
            for r in $result
                echo $r
            end

        case ctrl-r
           drag -x -a $result > /dev/null 2>&1
    end
end

