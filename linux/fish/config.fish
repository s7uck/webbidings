if set -q fish_startup_command
    eval $fish_startup_command
    set -e fish_startup_command
end

function l
    ll
end

function restart
    exit
    fish
end

# clear all the useless crap
clear

# go home
cd ~

# spacing
echo ''

# spacing
echo ''

# delete history
# history clear will prompt the user, so we use builtin here
function fap
    # what? it stands for Fish Activity Prune
    # >:(
    builtin history clear
end

# cap (clear + fap)
function cap
    clear
    fap
end

# 'keep' command will tell fish not to clear history on logout for the current
# session
function keep
    set keep_history true
end

# set the exit event handler
function on_exit --on-process %self
    echo "See you soon!"
    if not keep_history
        fap
    end
    set keep_history false
end
