---
layout: default
title: Life in Lausanne
category: life
---

<div>
  {% assign posts = site.categories.life | sort:"order" %}
  {% for post in posts %}
    {% if post.url %}      
        <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
        <!-- {{ post.excerpt }} -->
    {% endif %}
  {% endfor %}
</div>