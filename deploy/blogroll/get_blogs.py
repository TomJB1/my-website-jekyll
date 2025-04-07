import requests
import re
import csv
import os 

dir_path = os.path.dirname(os.path.realpath(__file__))

items = []

r = requests.get('https://rss.tombrandis.uk/api/query.php?user=tom&t=6jqt3O6uqx6cLitS1CCPuT&f=opml')
if(r.status_code == 200):
    for line in r.iter_lines():
        m = re.findall('<outline text="(.+)" type="rss" xmlUrl="(.+)" htmlUrl="(.+)"/>', line.decode('utf-8'))
        if(len(m)>0):
            items.append({"name": m[0][0], "xmlUrl": m[0][1], "htmlUrl": "https://"+m[0][1].split("//")[1].split("/")[0]})

with open(f'{dir_path}/../../_data/blogs.csv', "w", newline='', encoding="utf-8") as csvfile:
    fieldnames = ['name', 'xmlUrl', "htmlUrl"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    for i in items:
        try:
            writer.writerow(i)
        except Exception as e:
            print(f"ERROR can't write: {i} {e}")