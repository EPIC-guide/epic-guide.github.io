---
layout: default
title: Middle Years Guide
category: middle
---

<div>
  {% assign posts = site.categories.middle | sort:"order" %}
  {% for post in posts %}
    {% if post.url %}      
        <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
        <!-- {{ post.excerpt }} -->
    {% endif %}
  {% endfor %}
</div>