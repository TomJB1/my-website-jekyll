@echo off
START /B /WAIT cmd /c jekyll build -s %~dp0/.. -d %~dp0/../_site
echo "built"
@echo on
ssh root@tombrandis.uk.to < %~dp0/delete_folder.sh
scp -r %~dp0/../_site root@tombrandis.uk.to:/var/www/my-website-jekyll-built
PAUSE