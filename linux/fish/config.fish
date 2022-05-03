if set -q fish_startup_command
    eval $fish_startup_command
    set -e fish_startup_command
end

function l
    ll
end

function drv
    cd /mnt/$argv
end

function windows
    drv c
end
function apps
    drv a
end
function files
    drv q
end
function movies
    drv y
end

set autosync false # /mnt/q/Proj/
function autosync
    for repo in $autosync/*/
        if test -d $autosync/$repo/.git
            git -C $repo pull
        end
    end
end
if $autosync
    autosync
end

set moviesync "/mnt/y/∞ IQ"
function moviesync
    for playlist in $moviesync
        set playlistName (string split -r -m1 / $playlist)[2]
        if test $playlist/.metaData.db
            cd $playlist/..
            sync-dl sync -s "$playlistName"
        end
    end
end

# go home
cd ~

# spacing
echo ''
echo ''
echo ''
echo ''

# delete history
# history clear will prompt the user, so we use builtin here
# (fap=Fish Activity Prune)
function fap
    builtin history clear
end

set keep_history false
# 'keep' command will tell fish not to clear history on logout for the current
# session
function rkeep
    set keep_history true
end

# set the exit event handler
function on_exit --on-process %self
    echo "See you soon!~"
    if not $keep_history
        fap
    end
    set keep_history false
end
