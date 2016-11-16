# Atom integration with bashmarks (inspired by bashmarks!)

function a {
    source $SDIRS
    target="$(eval $(echo echo $(echo \$DIR_$1)))"
    if [ -z "$1" ]; then
      atom -a
    elif [ -f "$1" ]; then
        atom "$1"
    elif [ -d "$1" ]; then
        atom -a "$1"
    elif [ -d "$target" ]; then
        atom -a "$target"
    else
        atom -a $1
    fi
}
