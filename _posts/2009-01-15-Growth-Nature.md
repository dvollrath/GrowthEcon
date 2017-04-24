---
layout: post
title: Does economic growth harm the environment?
published: true
category: topic
---

It is often thought that there is a tension between growth and the environment. This may arise through either the use of resources, the growth of population, or both. What does the evidence say, and what the sources of either positive or negative impacts of growth on the environment?

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.nature %}
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

{% bibliography -q @url[keywords ~= nature] %}

### Academic References

{% bibliography -q @article[keywords ~= nature] @book[keywords ~= nature] @techreport[keywords ~= nature] -max 50 %}
