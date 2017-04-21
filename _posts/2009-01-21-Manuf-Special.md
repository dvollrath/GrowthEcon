---
layout: post
title: Is Manufacturing Special?
published: true
category: topic
---

There is a lot of concern over the size, growth, and future of manufacturing, which constitutes one part of total economic output. Is this concern justified, because manufacturing has particular importance in driving growth, or is it misplaced?

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.manuf %}
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

{% bibliography -q @url[keywords ~= manuf] %}

### Academic References

{% bibliography -q @article[keywords ~= manuf] @book[keywords ~= manuf] @techreport[keywords ~= manuf] %}
