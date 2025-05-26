---
tags:
  - how_to
  - world_wide_web
  - links
  - personal_websites
skills: 
layout: default
edited_date: 
previous_in_series: How to get started with a website
rss_date: Mon, 26 May 2025 22:06 GMT
---
A while ago I wrote a piece on getting stated with a website. It was OK but I wasn't completely happy with it. I tried to write a follow up to it but it seemed better suited to a more wiki-style format so I created my [HTML handbook](/html-handbook/). 

Whilst researching for the second piece that was not to be, I came across a lot of great guides. I have collected links to them (as well as some links from the first piece) here.

Hopefully these can be useful if you want to have a website for yourself.
## Hosting
### Site hosting
- [Bear blog](https://bearblog.dev/) - this gives you less customisation or design choice but very easy. Only for a blog, not a more freeform site. If you want to start publishing *right now* this is a good option.
- [xmit](https://xmit.co) - free, quick and allows custom domain names.
- [Neocities](https://neocities.org/) - custom domain names require premium £5/month
- [Web 1.0 hosting (dot) net](https://web1.0hosting.net/) - around 60MB for free.

### Shared servers
These are all shared computer systems that you can make an account on and will host your site.
- [SDF](https://sdf.org/?welcome)
- [SDF EU](https://sdfeu.org/w/start)
- [Tilde.club](https://www.tilde.club/) (I'm part of this - [my tilde club page](https://tilde.club/~tombrandis/))
- [Other tildes](https://tilde.club/%7Epfhawkins/othertildes.html) - tilde club member [~pfhawkins](https://tilde.club/~pfhawkins) keeps a list of similar projects to tilde club. There may well be more but I haven't encountered them.

### Self host
I you want you can host your website on hardware that you own. This isn't too difficult. I've put the general steps below.
1. Get a static IP address from your Internet Service Provider (ISP). My broadband is with [Zen](https://www.zen.co.uk/) who seem to have this as standard so it wasn't a problem for me. If you can't do this you might need to use a dynamic IP address service like [afraid (dot) org](https://afraid.org/) (paid) or [DuckDNS](https://www.duckdns.org/).
2. Find a device. This could be almost anything that you can leave powered on and connected to your router all the time however having low power usage and a good (preferably ethernet) connection is desirable. I use a [Raspberry Pi 1 A+](https://www.raspberrypi.com/products/raspberry-pi-1-model-a-plus/) right now but an old phone was sufficient when I first started.
3. Set up a web server on the device. I recommend either [Lighttpd](https://www.lighttpd.net/) (what I use), [Nginx](https://nginx.org/) or [Apache](https://apache.org/) on some Linux-based OS. I use [DietPi](https://dietpi.com/) for my Pi and I really liked [Alpine Linux](https://alpinelinux.org/) on the iPhone (via  [iSH](https://github.com/ish-app/ish)). Point the server to your website files so that you can connect to it when on the same network with a web browser a file on your server.
4. Forward the ports 80 and 443 in your router to the web server device.
5. Rent a domain name (country domains seem to be most affordable) or get a free (but possibly temporary) one from [afraid (dot) org](https://afraid.org/).
6. Get a TLS/SSL certificate for your domain name using [Let's Encrypt's Certbot](https://letsencrypt.org/) and enable HTTPS on your web server.
7. You have a website!

I also found a similar guide by [LandChad (dot) net](https://landchad.net/#start-a-website) which is more opinionated and has commands to copy.
## Tools
- [Git](https://git-scm.com/) - essential [[2024-10-05-Git is amazing|version control]]
- A text editor - [Emacs](https://www.gnu.org/software/emacs/), [Vim](https://www.vim.org/) or [Nano](https://www.nano-editor.org/) are great; [VSCode(ium)](https://vscodium.com/) is definitely the easiest.
- A markdown editor like [Obsidian](https://obsidian.md/) or [Marktext](https://www.marktext.cc/) if you want to separate your writing from coding.
- A static site generator such as [Jekyll](https://jekyllrb.com/), [Hugo](https://gohugo.io/), [Eleventy](https://www.11ty.dev/), [BSSG](https://bssg.dragas.net/) or many, many more. I use Jekyll - it's fine but I don't really like it and I'm probably going to switch to something else soon.
- Accessibility/web standards checker like [WAVE](https://addons.mozilla.org/en-US/firefox/addon/wave-accessibility-tool) or [axe](https://addons.mozilla.org/en-US/firefox/addon/axe-devtools).

## Design
### Reference
- [The Odin Project](https://www.theodinproject.com/)
- [MDN web docs](https://developer.mozilla.org)
- [The HTML standard](https://html.spec.whatwg.org/)
- [Can I Use](https://caniuse.com/) - information on support for features in browsers.
- [Accessibility Support](https://a11ysupport.io/) - same as Can I Use but for screen readers. The data seems to be rather out of date (it is community run) but I haven't found a good alternative.
- [Are my colors accessible](https://www.aremycolorsaccessible.com/palette)

### Opinions
- [HTML for the people](https://htmlforpeople.com/)
- [Creating a website - Whitefiles by Ray White](https://whitefiles.org/cws/index.htm)
- [My HTML handbook](/html-handbook/) - This is where I put my notes about making HTML for this site.
- [HTML Hell](https://www.htmhell.dev/) - bad practices to avoid.
- [HTML Tips - Thomasorus](https://thomasorus.com/html-tips.html)
- [Web best practices - Seirdy](https://seirdy.one/posts/2020/11/23/website-best-practices/)
- [Motherf--king website](https://motherfuckingwebsite.com/), [Better Motherf--king website](http://bettermotherfuckingwebsite.com/) and [Just f--king use HTML](https://justfuckingusehtml.com/) (Strong language!) - websites don't need to be complicated.
- [accessiBe will get you sued](https://adrianroselli.com/2020/06/accessiBe-will-get-you-sued.html)
- [The "Cheap" Web](https://potato.cheap/)
- [What is semantic HTML?](https://www.a11yproject.com/posts/what-is-semantic-html/)
- [The right tag for the job: why you should use semantic HTML](https://localghost.dev/blog/the-right-tag-for-the-job-why-you-should-use-semantic-html/)

### Inspiration
Here's some websites that I like the design of.
- [Kalechips](https://kalechips.net/)
- [Beepbird](https://www.beepbird.net/)
- [Landchad](https://landchad.net/)
- [Disassociating](https://www.whysf.xyz/)
- [Tommi](https://tommi.space/)
- [Peter Molnar](https://petermolnar.net)
- [Godteeth](https://godteeth.com/)
- [Taylor Town](https://taylor.town/)
- [jes](https://j3s.sh/)
- [Julia Evans](https://jvns.ca/)
- [CSS Zen garden](https://www.csszengarden.com/) - this isn't a personal website but a interactive page that allows you to switch between a lot of different styles.
- [Vale](https://vale.rocks/)
- [Don Marti](https://blog.zgp.org/)
- [David Bushell](https://dbushell.com/)