---
layout: post
title: Robots and the Future of Jobs
published: true
category: topic
---

A prominent concern is that automation, in the form of robots in particular, will destroy or take jobs from human beings. The materials here look at how likely or unlikely this is, how we've responded to similar changes in automation in the past, and whether robots are fundamentally different in this regard. 

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.robots %}
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

{% bibliography -q @url[keywords ~= robots] %}

### Academic References

{% bibliography -q @article[keywords ~= robots] %}
