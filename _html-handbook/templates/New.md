---
layout: wiki
w3_link: 
name:
---
<% await (tp.file).rename(tp.file.title.replace(/\?/g, "")) %><% await tp.file.move("/drafts/" + tp.file.title) %>
## Example
<div class="codeblock"><pre><code class="language-html">&lt;&gt; &lt;/&gt;</code></pre><button>copy</button></div>