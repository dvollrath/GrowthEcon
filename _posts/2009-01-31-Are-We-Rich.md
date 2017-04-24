---
layout: post
title: Are we rich?
published: true
category: topic
---

One of the stories of economic growth is that we are much richer today than we were in the past. That is based on measure of GDP and GDP per capita.  How do you measure GDP and GDP per capita, and what does growth in those terms actually mean? Is GDP per capita related to actual welfare, or is it a poor proxy? Can we compare how rich one country is to another, or compare how rich we are to the past? Should we care about economic growth at all? 

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.rich %}
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

{% bibliography -q @url[keywords ~= rich] %}

### Academic References

{% bibliography -q @article[keywords ~= rich] @book[keywords ~= rich] @techreport[keywords ~= rich] %}
