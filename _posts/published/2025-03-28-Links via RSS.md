---
tags: 
skills: []
layout: default
edited_date: 
title: Links via RSS
previous_in_series: 
---
Do you want to get interesting links infrequently from slightly random places around the web? Do you want to get it via RSS? Well you're in luck! Subscribe to my new [links RSS feed](https://tombrandis.uk/links/feed.xml).

This was inspired by [Drew DeVault](https://drewdevault.com/), who I read the blog of, setting up a account in [linkhut](https://linkhut.org/), an open source, optionally self hosted social bookmarking service. 

I had a look at linkhut but decided that I really didn't need or want to tag, save or manage anything and that a simpler solution would probably be better. Plus I was itching to program something that wasn't for school.

My set hacky 
up is [a bookmarklet](https://github.com/TomJB1/my-website-jekyll/blob/main/deploy/links/bookmarklet.js) that copies a command to my clipboard that I can quickly paste into a command prompt. This calls [a bash script](https://github.com/TomJB1/my-website-jekyll/blob/main/deploy/deploy_links.sh) that calls a python script.

[The python script](https://github.com/TomJB1/my-website-jekyll/blob/main/deploy/links/add_link.py) adds the new link to [a CSV file](https://tombrandis.uk/links/links.csv) which contains all of them. It then creates the RSS file using f-strings. I don't like templating in python but I think that it is OK here because I don't think I'm going to change the format of a RSS file very often.

Back in the bash script, I use rsync to copy the links folder to my server in the same way that I do for the whole website.

Probably not the best way to do that but it works!
