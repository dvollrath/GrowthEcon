---
layout: post
title: Does economic growth mean cconomic development?
published: true
category: topic
---

Is there a difference between economic *growth* and *development*, where *development* can refer to not only economic outcomes, but broader qualities of a country.

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.dev %}
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

{% bibliography -q @url[keywords ~= dev] %}

### Academic References

{% bibliography -q @article[keywords ~= dev] @book[keywords ~= dev] @techreport[keywords ~= dev] %}
