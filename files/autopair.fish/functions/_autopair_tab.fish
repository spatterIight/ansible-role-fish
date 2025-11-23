# https://github.com/jorgebucaran/autopair.fish/tree/1.0.4/functions

function _autopair_tab
    commandline --paging-mode && down-or-search && return

    string match --quiet --regex -- '\$[^\s]*"$' (commandline --current-token) &&
        commandline --function end-of-line --function backward-delete-char
    commandline --function complete
end
