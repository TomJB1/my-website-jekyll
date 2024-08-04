---
tags: 
skills: []
layout: default
edited_date: 
title: <% tp.file.title %>
---
<% await (tp.file).rename(tp.file.title.replace(/\?/g, "")) %>