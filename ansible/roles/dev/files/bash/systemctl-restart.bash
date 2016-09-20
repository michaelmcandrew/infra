# Atom integration with bashmarks (inspired by bashmarks!)

function sr {
    echo Executing \'systemctl restart $1.service\'
    systemctl restart $1.service
}
