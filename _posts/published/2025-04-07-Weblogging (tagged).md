---
tags:
  - blogging
  - Jekyll
  - tagged
  - this_website
skills: 
layout: default
edited_date: 
title: Weblogging (tagged)
previous_in_series: 
rss_date: Mon, 07 April 2025 08:59 GMT
code: true
---
Some of the more established bloggers are doing a series of questions about blogging and [I've been tagged](https://dbushell.com/2025/04/06/weblogging-4/). Well kind of. Thanks David Bushell for opening it up to everyone! I'm also going to use this post to announce that I have finally set up a blogroll on [my home page](/), which you will of course find him on.
## Why did you start blogging in the first place?
I had a web server (read: old iPhone) and nothing to do with it. A blog seemed an obvious use for it and setting it up was a fun project.
## What platform are you using to manage your blog and why did you choose it?
The blog is created using Jekyll. I chose it because it looked the easiest of the static site generators. When I have some time I might switch to something else (11ty?) because the liquid templating language is kinda terrible. Just have a look at how much I have to write for the related posts section.
<div class="codeblock"><pre><code class="language-html">
    {\% assign has_heading = false \%}
    {\% for post in site.posts \%}
      {\% for tag in page.tags \%}
        {\% if post.tags contains tag and post.title!=page.title and post.previous_in_series!=page.title and page.previous_in_series!=post.title \%}
          {\%  if has_heading != true \%}
            &lt;h2&gt;related posts&lt;/h2&gt;&lt;ul&gt;
            {\% assign has_heading = true \%}
          {\%endif\%}
          &lt;li&gt;&lt;a href="{{post.url}}"&gt;{{post.title}}&lt;/a&gt;{\% if  post.favourite \%}&lt;span class="star"&gt;★&lt;span class="small"&gt;favourite&lt;/span&gt;&lt;/span&gt;{\%endif\%}&lt;/li&gt;
          {\%break\%}
        {\%endif\%}
      {\%endfor\%}
    {\%endfor\%}
    {\% if has_heading \%}
    &lt;/ul&gt;
    {\%endif\%}
</code></pre><button>copy</button></div>
## Have you blogged on other platforms before?
No.
## How do you write your posts? For example, in a local editing tool, or in a panel/dashboard that’s part of your blog?
I write in markdown although I end up writing more HTML in it than I would like because markdown has frustrating gaps in it *and* Jekyll is really hard to extend.
## When do you feel most inspired to write?
Usually when I feel particularly strong emotions about something or when I disagree with what people often say about a topic and want to express my point of view. I also write when I think that I might have something that could help other people such as my [[2025-02-01-My UCAS physics personal statement|UCAS statement]].
## Do you publish immediately after writing, or do you let it simmer a bit as a draft?
I almost never publish immediately, mostly because of the strong feelings thing.

I also usually make lots of format changes before publishing because I don't think that my writing is usually very good the first time around. I often leave out important information because I forget that not everyone is inside my head.
## What are you generally interested in writing about?
I don't have a set theme for this blog, it's just an outlet for whatever I'm thinking about.
## Who are you writing for?
Myself and my singular reader. Hi!
## What’s your favorite post on your blog?
[[2024-11-23-Is content destroying art|Is content destroying art]]
## Any future plans for your blog? Maybe a redesign, a move to another platform, or adding a new feature?
Move to a better templating language and static site generator, maybe webmentions. I don't really have a plan beside that but I'm sure I'll decide to add something at some point!
## Tag ‘em
I'm going to follow David's lead and tag **You**. If you don't have a blog, looks like your going to need one. Have a look at [[2025-02-17-How to get started with a website]] or just go with [Bearblog](https://bearblog.dev/).