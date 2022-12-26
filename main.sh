# This file must be used with "source kiku.sh" *from bash*

# The objective of this script is to play a sound when a command is
# executed. 

if [ "${BASH_SOURCE-}" = "$0" ]; then
    echo "You must source this script: \$ source $0" >&2
    exit 33
fi

stop () {
    PS1="$_OLD_PS1"
    export PS1
    unset _OLD_PS1
    unset PROMPT_COMMAND
    unset -f stop
    unset -f play_sound
}

play_sound () {
    # setsid allows to play the sound even in background
    setsid mpg123 -q "${KIKU_SOUND:-/usr/local/share/kiku/notif.mp3}"
}

_OLD_PS1="${PS1-}"
export PS1=(🎵)$PS1

trap stop EXIT
export PROMPT_COMMAND=play_sound