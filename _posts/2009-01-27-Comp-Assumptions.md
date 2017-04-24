---
layout: post
title: Does growth require competition?
published: true
category: topic
---

We usually argue that competition - free entry, zero profits, price-taking behavior - is the most efficient outcome for an economy. But that holds *given a set of technology*. Generating innovations, and hence economic growth, relies on a breakdown of some of those characteristics of competition. Thinking about this really gets to the heart of what drives growth: non-rival ideas combined with some excludability.

### Blog Posts
<div class="posts">
<ul>
  {% for post in site.tags.comp %}
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

{% bibliography -q @url[keywords ~= comp] %}

### Academic References

{% bibliography -q @article[keywords ~= comp] @book[keywords ~= comp] @techreport[keywords ~= comp] %}
