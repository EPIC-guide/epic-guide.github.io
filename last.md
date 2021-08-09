---
layout: default
title: Last Year Guide
category: last
---

<div>
  {% assign posts = site.categories.last | sort:"order" %}
  {% for post in posts %}
    {% if post.url %}      
        <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
        <!-- {{ post.excerpt }} -->
    {% endif %}
  {% endfor %}
</div>