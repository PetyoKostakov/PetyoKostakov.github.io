---
layout: page
title: Learning
permalink: /learning/
---

# Learning

Courses, workshops, training programmes and conferences I've attended — a running record of
how I keep my skills current.

{% assign items = site.learning | sort: "date" | reverse %}

{% if items.size > 0 %}
  {% assign by_year = items | group_by_exp: "item", "item.date | date: '%Y'" %}

  {% for year in by_year %}
  <section class="learning-year">
    <h2 class="learning-year__heading">{{ year.name }}</h2>

    <ul class="learning-list">
      {% for item in year.items %}
      <li class="learning-item">
        <div class="learning-item__head">
          <span class="learning-badge learning-badge--{{ item.kind | default: 'course' | slugify }}">
            {{ item.kind | default: "Course" }}
          </span>
          <span class="learning-item__date">{{ item.date | date: "%b %Y" }}</span>
        </div>

        <h3 class="learning-item__title">
          {% if item.content != blank %}
            <a href="{{ item.url | relative_url }}">{{ item.title | escape }}</a>
          {% else %}
            {{ item.title | escape }}
          {% endif %}
        </h3>

        {% if item.organization %}
        <p class="learning-item__org">
          {{ item.organization }}{% if item.location %} &middot; {{ item.location }}{% endif %}
        </p>
        {% endif %}

        {% if item.description %}
        <p class="learning-item__desc">{{ item.description }}</p>
        {% endif %}

        {% if item.credential_url %}
        <a class="learning-item__credential"
           href="{{ item.credential_url }}"
           target="_blank"
           rel="noopener noreferrer">View credential &rarr;</a>
        {% endif %}
      </li>
      {% endfor %}
    </ul>
  </section>
  {% endfor %}

{% else %}
<p>Nothing published here yet — check back soon.</p>
{% endif %}
