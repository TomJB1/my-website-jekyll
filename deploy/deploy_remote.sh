cd /var/www/my-website-jekyll
git fetch origin main
git reset --hard origin/main
bash deploy/deploy.sh -f -m -sd