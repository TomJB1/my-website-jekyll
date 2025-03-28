#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}/.."
DIR=$(pwd)

python $SCRIPT_DIR/links/add_link.py "$1" "$2" "$3"

if [[ "$OSTYPE" == "msys" ]]; then
    export MSYS_NO_PATHCONV=1
    rsync -r -v -e "/usr/bin/ssh -o UserKnownHostsFile=~/.ssh/known_hosts" /cygdrive/$DIR/links root@tombrandis.uk:/var/www/my-website-jekyll-built
    unset MSYS_NO_PATHCONV 
else
    rsync -r -v $DIR/links root@tombrandis.uk:/var/www/my-website-jekyll-built
fi

ssh root@tombrandis.uk < $SCRIPT_DIR/on_server/ownership.sh