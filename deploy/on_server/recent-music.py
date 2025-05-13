import requests
import re
import os

r = requests.get('https://libre.fm/2.0/?method=user.gettopartists&user=TomBrandis&period=7day&limit=5&format=json')
if(r.status_code == 200):
    list_items=""
    for artist in r.json()["topartists"]["artist"]:
        list_items+=f"<li>{artist['name']}</li>"
path = "/var/www/my-website-jekyll-built/music/index.html"

with open(path, "r") as music:
    new_html = re.sub(r'<ol id="music-last-week">.*</ol>', f"<ol id='music-last-week'>{list_items}</ol>", music.read())
with open(path, "w") as music:
    music.write(new_html)
