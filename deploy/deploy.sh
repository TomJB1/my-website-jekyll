#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}/.."
JEKYLL_DIR=$(pwd)
echo "$JEKYLL_DIR"
SITE_DIR=$JEKYLL_DIR/_site
echo $SITE_DIR

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -c|--clean) clean=1 ;;
        -f|--force) force=1 ;;
        -e|--existing) existing=1 ;;
        -l|--local) local=1 ;;
        -m|--maxify) maxify=1 ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

git fetch
if [[ `git status --porcelain` ]] && [ -z "$force" ]; then
echo "commit changes"
else
    if [ -n "$existing" ]; then
        echo "not rebuilding"
    else
        jekyll build -s $JEKYLL_DIR -d $SITE_DIR
    fi

    if [ -z "$maxify" ]; then
        npx lightningcss --minify $JEKYLL_DIR/_site/assets/css/*.css -d $JEKYLL_DIR/_site/assets/css/
    fi

    if [ -n "$clean" ] && [ -z "$local" ]; then
        ssh root@tombrandis.uk.to < $SCRIPT_DIR/delete_folder.sh
    fi

    if [ -z "$local" ]; then
        if [[ "$OSTYPE" == "msys" ]]; then
            export MSYS_NO_PATHCONV=1
            rsync -r -v -e "/usr/bin/ssh -o UserKnownHostsFile=~/.ssh/known_hosts" /cygdrive/$JEKYLL_DIR/_site/ root@tombrandis.uk.to:/var/www/my-website-jekyll-built
            unset MSYS_NO_PATHCONV 
        else
            rsync -r -v $JEKYLL_DIR/_site/ root@tombrandis.uk.to:/var/www/my-website-jekyll-built
        fi
    else
        echo "local build - not publishing to server"
    fi
fi
