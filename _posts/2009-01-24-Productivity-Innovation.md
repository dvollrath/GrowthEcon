---
layout: post
title: Are we innovating less? 
published: true
category: topic
---

You have to be careful not to confuse *productivity* growth and *innovation*. The former includes the latter, but also lots of other things. It isn't obvious whether innovation is slowing down or getting harder, even if you see slow productivity growth.

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.innov %}
    {% if post.url %}
        <li>
         <a id="post-link-trans" class="post-link" href="{{ post.url | prepend: site.baseurl }}">
            {{ post.title }}
          </a>
        </li>
    {% endif %}
  {% endfor %}
</ul>
</div>

### External Links

{% bibliography -q @url[keywords ~= innov] %}

### Academic References

{% bibliography -q @book[keywords ~= innov] @article[keywords ~= innov] @techreport[keywords ~= innov]%}
