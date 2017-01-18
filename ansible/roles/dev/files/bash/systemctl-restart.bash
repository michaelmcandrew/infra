function sr {
    if [ -z "$1" ]; then
      cat <<EOF
Usage: "sr [service]"
Executes: "systemctl restart [service].service"
EOF
    else
      if systemctl | grep -q $1.service; then
        echo Restarting $1...
        sudo systemctl restart $1.service
      else
        echo $1.service not found
      fi
    fi
}
