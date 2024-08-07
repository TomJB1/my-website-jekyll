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
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

if [[ `git status --porcelain` ]] && [ -z "$force" ]; then
echo "commit changes"
else
    if [ -n "$existing" ]; then
    echo "not rebuilding"
    else
    jekyll build -s $JEKYLL_DIR -d $SITE_DIR
    fi

    if [ -n "$clean" ]; then
    ssh root@tombrandis.uk.to < $SCRIPT_DIR/delete_folder.sh
    fi

rsync -r -v $JEKYLL_DIR/_site/ root@tombrandis.uk.to:/var/www/my-website-jekyll-built

fi
