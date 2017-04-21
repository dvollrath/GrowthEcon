---
layout: post
title: Deep Determinants of Development
published: true
category: topic
---

There are two big questions floating around here. First, are countries (or populations, or regions) rich because of some persistent characteristic that can be traced backwards through history? Second, are those characteristics determined by geography, institutions, culture, or just plain luck? 

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.deep %}
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

{% bibliography -q @url[keywords ~= deep] %}

### Academic References

{% bibliography -q @article[keywords ~= deep] @book[keywords ~= deep] @techreport[keywords ~= deep] -max 50 %}
