JEKYLL_DIR=/home/build_website/my-website-jekyll
SITE_DIR=$JEKYLL_DIR/_site
cd $JEKYLL_DIR
git pull

jekyll build --incremental -s $JEKYLL_DIR -d $SITE_DIR
npx lightningcss --minify $JEKYLL_DIR/_site/assets/css/*.css -d $JEKYLL_DIR/_site/assets/css/

rsync -r -v $JEKYLL_DIR/_site/ /var/www/my-website-jekyll-built
chown -R www-data /var/www/my-website-jekyll-built/