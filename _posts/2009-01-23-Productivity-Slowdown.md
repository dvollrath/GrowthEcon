---
layout: post
title: Productivity Slowdown
published: true
category: topic
---

Since the financial crisis and recession of 2009, economic growth in the U.S. (as well as many other rich countries) has been slow relative to past history. That slow economic growth is due in large part to slower growth in productivity, and that slower growth in productivity started even before the financial crisis. The materials here discuss how to measure productivity growth, how productivity growth is (or is not) related to technological change, and offers some ideas about what might be driving the slowdown.

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.prod %}
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

{% bibliography -q @url[keywords ~= prod] %}

### Academic References

{% bibliography -q @book[keywords ~= prod] @article[keywords ~= prod] @techreport[keywords ~= prod]%}
