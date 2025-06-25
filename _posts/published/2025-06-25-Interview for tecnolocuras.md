---
tags:
  - this_website
  - interview
  - self_hosted
  - reusing
skills: 
layout: default
edited_date: 
previous_in_series: Why make a website
rss_date: Wed, 25 June 2025 10:25 GMT
---
Two weeks ago, the writer of the spanish-language site [tecnolocuras](https://tecnolocuras.com/) emailed me asking if I could answer some questions for an article he was writing.

I was excited to say yes - here is the [spanish article](https://tecnolocuras.com/entrevistas/explorando-el-autohosting-con-tom/) or you can my replies in english below.

I love this kind of things, so if you are doing something similar, please do contact me!
## Who am I?
Hi, I'm Tom. I have just finished my A levels and I run a website (and a email server and feed aggregator) on a Raspberry Pi.
## Why self host?
> What motivated you to host your website on a Raspberry Pi 1 Model A+ instead of using conventional hosting?

It just kind of happened. I think that I had discovered that you could run Alpine Linux on a iPhone using an *very* impressive project called [iSH](https://ish.app/). My first phone (that I got when I was 11) was an [iPhone 5S](https://web.archive.org/web/20140228171038/https://www.apple.com/iphone-5s/) and when I got a newer one around 2022 I put iSH on it just for fun. I installed the Lighttpd web server and it all started from there.

Before I knew it, I had a website.

Hosting a website on a iPhone 5S is, frankly, a terrible idea. They crash frequently and eat electricity. But I still wanted a website. I could have easily rented space on a server like everybody else (sensibly) does but, since I had already set up a website on the phone, I *knew* that I could do it myself and I wanted the challenge.

A few months later I found a [Raspberry Pi 1 A+](https://www.raspberrypi.com/products/raspberry-pi-1-model-a-plus/) for sale, I think it was on eBay. It wasn't a new version but it was available. This was near the end of the [2020–2023 global chip shortage](https://en.wikipedia.org/wiki/2020%E2%80%932023_global_chip_shortage) which had pushed up the prices of anything with a chip in it so I was quite happy to get it for around £20. I think the SD card and various peripherals that I needed made the entire thing cost somewhere around £40.
## Technical challenges
> What technical challenges did you face setting up a home server on such limited hardware?

It is really much easier than you may expect. I flashed the operating system onto the SD card using my laptop, turned the Pi on and connected to it via SSH.

I could then install my (by then favourite) web server lighttpd, and git. I then git-cloned my site into the webroot and it just worked.

I have since added PHP to my site, added a forum (and removed it) and removed the PHP. The latest iteration is static site generated with Jekyll and then copied to the server with rsync but I am already getting frustrated with Jekyll so it will probably change again soon.

The limited hardware has made me think about doing things efficiently (within reason) in order to maintain a site that loads quickly. I also generate the site on my laptop and copy just the HTML, CSS and JS itself over to the server 
## Security
> From a security standpoint, what precautions do you take to protect your server and home network? Are there any common misconceptions you’d like to debunk?

I try to follow the best practices - the web server runs as a user with reduced permissions - but it's otherwise not really that hard. Modern web server software is nearly always plug-and-play.

Running on my own network does mean that I have to tell everyone what my IP address is, however trying find my location with my IP address leads to hilariously bad results (results may vary for you).

With regard to bots being problematic when scraping my site, I barely do anything. If I had more traffic or had more links to my site I am sure I would have to implement blocklists but right now it is unnecessary.
## Maintenance
> What kind of maintenance do you perform on your server? Has it been stable over time?

My set up needs basically no maintenance. It is very simple, with no fans and it runs a nice lightweight Linux distribution - [DietPi](https://dietpi.com/). Right now it has been powered on for 314 days!
## Reusing old hardware
> How important is the idea of “reusing old hardware” to you, especially in contrast to today’s consumption-driven tech culture?

Production of a new device produces a [surprisingly large amount of CO2](https://www.sciencedirect.com/science/article/abs/pii/S095965261733233X?via%3Dihub) ([SciHub](https://sci-hub.st/10.1016/j.jclepro.2017.12.239)), so the longer you can use them for, the better.

It is not always practical to reuse everything - for example my 5S was not a good web server - but trying to reduce the amount of new tech that is created is very worthwhile.
## Would you recommend it?
> Would you recommend self-hosting to others? What kind of projects or use cases do you think are ideal for this approach?

Yes, sometimes. As with most things, self hosting is something that you should do in some situations but not others. If you want to have fun with a problem and be able to run whatever ~~you want~~ you can figure out how to set up then self hosting is great.

If you just want a website can I point you towards [Tilde.club](https://www.tilde.club/) or [Bear blog](https://bearblog.dev/) (I have also written [[2025-05-26-Resources for making a website|more about this]]).