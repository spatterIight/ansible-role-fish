# https://github.com/jorgebucaran/autopair.fish/tree/1.0.4/functions

function _autopair_backspace
    set --local index (commandline --cursor)
    set --local buffer (commandline)

    test $index -ge 1 &&
        contains -- (string sub --start=$index --length=2 -- "$buffer") $autopair_pairs &&
        commandline --function delete-char
    commandline --function backward-delete-char
end
