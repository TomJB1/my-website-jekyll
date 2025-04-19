---
tags:
  - search_engine
  - coding
skills: 
layout: default
edited_date: 
title: Adventures in web crawling
previous_in_series: 
rss_date: Sat, 19 April 2025 12:58 GMT
---
If you've seen BrandisBot (+https://tombrandis.uk) in your logs, don't worry I'm not out to steal your blog or train AI. I'm trying to create a search engine.

<i>If you don't want me to crawl you ever (I'm probably not as nice as some other bots) either email me at <a href="mailto:tom@tombrandis.uk">tom@tombrandis.uk</a> or add me to your robots.txt, which I do obey. Please don't block my IP because then I won't be able to view your website.  Also sorry for all the recrawls because I messed stuff up especially for the first couple of sites.</i>

I wrote a very flimsy scraper in python.

My scraper crawls the web, starting at my favourite bookmarked sites and saves how many times each word is on the page. This is saved into 2 jsons, one connecting the words to small hashes of the URL's and another connecting the hashed to the actual URL's and page titles.

These json files can then be ingested by another python script for searching them. The searcher returns pages which have the most occurrences of any the words in the search.

I chose python because it has a lot of useful libraries that can handle web requests, regex, json encoding and especially robots.txt parsing (I used the [Protego](https://github.com/scrapy/protego) library) which I would risk getting wrong if I did it myself, and I don't want to be messing with people servers too much.

I'm doing this for fun - I love a little programming challenge - but maybe someday it might become a more useful thing or at least a way to discover more about this side of the web. In the future I want to improve it so that the information is saved in a database and add a web form like a real search engine. I might also do another scrape at some point because the internet dropped out for a bit and it missed some links. If I do crawl again I'll make sure that I save which pages I've already done - right now its a variable that is only stored in memory.