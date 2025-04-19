---
tags:
  - how_to
  - personal_websites
  - world_wide_web
  - blogging
  - search_engine
skills: 
layout: default
edited_date: 
title: How to get started with a website
previous_in_series:
---
So you want to make a website? 

Firstly get a bit of paper (or a notes app) and figure out what you want it to be like. Is it about a hobby, for a blog or a resume? Maybe its a mixture. Either way allow yourself to get a bit excited about it.

This guide will only be covering static websites - those that are the same whoever looks at them, like this website. Dynamic websites (like a social media site) can be a little bit more expensive/complicated to run.
## Hosting
Web hosting can come in various levels of complexity; to simplify things I have separated this section into blog vs website to separate simple non-technical solutions from having your own full-blown website.
### Blog hosting
If you just want to write text then you might just want a blog service. I don't really know much about this but these might be good places to start.
- [Bear blog](https://bearblog.dev/)
- [Wordpress](https://wordpress.org/)
- [Blogger](https://www.blogger.com/about)

### Website hosting
If you want more control over your website you can make your own HTML and CSS. It's not as hard as it sounds! The next post in this series will be a tutorial on writing your first HTML website. This can be done with the help of static site generators like [Hugo](https://gohugo.io/), [11ty](https://www.11ty.dev/) and [Jekyll](https://jekyllrb.com).
- [xmit](https://xmit.co) - free, quick and allows custom domain names.
- [Neocities](https://neocities.org/) - custom domain names require premium £5/month
- [Web 1.0 hosting (dot) net](https://web1.0hosting.net/) - around 60MB for free.
- Join a tilde club. These are shared servers that you can make an account on. Most offer a web page or site and some even give you a email account. You can go with [the original](https://www.tilde.club/) or [one of the others](https://tilde.club/%7Epfhawkins/othertildes.html). 
- Self host - You will need to choose web server software to install. This website uses [lighttpd](https://www.lighttpd.net/); [apache](https://httpd.apache.org/) and [nginx](https://nginx.org/en/) are also good options. I then use [rsync](https://rsync.samba.org/) in a bash script to transfer my websites files to the server.

Whilst many of these options are free I recommend you to donate if you decide to use them to ensure their continued existence.
## Getting a domain name
A domain name is your identifier on the internet. Some hosting options come with a domain name but you might want to get your own. This will stop links [from breaking](https://en.wikipedia.org/wiki/Link_rot) if you decide to move to a different hosting service or start self-hosting.

Domain names run on a system where a limited amount of companies and a lot of resellers rent out the domains. You can unfortunately never own a domain name but instead rent it. I rent my domain name from [GB Names](https://www.gbnames.uk/), which as the name suggests specialize in British domain names.

If you need a free one you can get a subdomain from [afraid (dot) org](https://afraid.org/). There is a risk to this as the owner of the domain can withdraw at any time and you will be left with no domain name. This is what happened to me - I had the subdomain tombrandis(dot)uk(dot)to but the owner of uk(dot)to withdrew it and I lost the domain, prompting me to acquire my current domain, [tombrandis (dot) uk](https://tombrandis.uk/).

Once you have rented your domain name you will need to set up a record to show where the website is. If you have the IP address of your website you will want a A record and if you have a domain then you can use a CNAME record. When you visit your domain it should show your website.
## Spread the word
Now you have a website you probably want people to find you. There are a few ways that you might want to do this.
### Search engines
The main two search engines to register your website with are [Google](https://search.google.com/search-console) and [Bing](https://www.bing.com/webmasters/about). Other search engines such as Duck Duck Go will then pick up your site. You can also add your websites to the relevant [[2024-08-18-Don't google it|alternative search engines]].
### Webrings
These are collections of websites that link to each other and help people find other sites without search engines. Have a look at the one's I'm part of on [my home page](/).