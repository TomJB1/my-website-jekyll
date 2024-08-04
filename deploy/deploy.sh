#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}/.."
JEKYLL_DIR=$(pwd)
echo "$JEKYLL_DIR"
SITE_DIR=$JEKYLL_DIR/_site
echo $SITE_DIR

if [[ `git status --porcelain` ]]; then
echo "commit changes"
else
jekyll build -s $JEKYLL_DIR -d $SITE_DIR

ssh root@tombrandis.uk.to < $SCRIPT_DIR/delete_folder.sh

scp -r $JEKYLL_DIR/_site root@tombrandis.uk.to:/var/www/my-website-jekyll-built

fi
