---
layout: post
title: Can You Reform Your Way to Higher Growth?
published: true
category: topic
---

There are a lot of plausible policy changes that could raise the potential GDP of the U.S. (or many other countries). Whether those policy changes would lead to an appreciable change in growth rates is unclear, because the force that pushes economies towards a balanced growth path - convergence - operates very slowly. Then again, who says that a balanced growth path even exists? 

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.converge %}
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

{% bibliography -q @url[keywords ~= converge] %}

### Academic References

{% bibliography -q @article[keywords ~= converge] @book[keywords ~= converge] @techreport[keywords ~= converge] %}
