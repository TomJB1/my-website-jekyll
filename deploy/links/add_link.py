from datetime import datetime, timezone
import pathlib
import sys

desc = "A link from Tom Brandis" if (sys.argv[3]=='""') else sys.argv[3]
line = f'\n"{sys.argv[1]}","{sys.argv[2]}","{desc}","{datetime.now(timezone.utc).strftime("%a, %d %b %Y %H:%M")} GMT"'

with open(str(pathlib.Path(__file__).resolve().parents[2])+"/links/links.csv", "a") as file:
    file.write(line)
