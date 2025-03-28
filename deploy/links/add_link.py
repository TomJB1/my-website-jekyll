import csv
from datetime import datetime, timezone
import pathlib
import sys

# add link

desc = "A link from Tom Brandis" if (sys.argv[3]=='""') else sys.argv[3]
line = f'\n"{sys.argv[1]}","{sys.argv[2]}","{desc}","{datetime.now(timezone.utc).strftime("%a, %d %b %Y %H:%M")} GMT"'

with open(str(pathlib.Path(__file__).resolve().parents[2])+"/links/links.csv", "a") as file:
    file.write(line)

# create feed

urls = []

with open(str(pathlib.Path(__file__).resolve().parents[2])+"/links/links.csv", "r") as file:
    reader = csv.DictReader(file, delimiter=",")
    for line in reader:
        urls.append({"title": line['Title'], "link": line['Link'], "comment": line['Comment'], "date": line['Date']})

rss_items = ""

for item in urls:
    rss_items = f'''    <item>
        <title>{item['title']}</title>
        <link>{item['link']}</link>
        <description>{item['comment']}</description>
        <pubDate>{item['date']}</pubDate>
    </item>\n'''+rss_items



title = "Links from Tom Brandis"
site = "https://tombrandis.uk"
description = "A selection of links curated by Tom"
language = "en-gb"
time_to_live = 60 * 24 # mins


rss_feed = f'''<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
    <title>{title}</title>
    <link>{site}</link>
    <description>{description}</description>
    <language>{language}</language>
    <lastBuildDate>{datetime.now(timezone.utc).strftime("%a, %d %b %Y %H:%M")} GMT</lastBuildDate>
    <ttl>{time_to_live}</ttl>
{rss_items}</channel>
</rss>'''

with open(str(pathlib.Path(__file__).resolve().parents[2])+"/links/feed.xml", "w") as feed_file:
    feed_file.write(rss_feed)