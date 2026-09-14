---
layout: page
title: Blog
permalink: /blog/
---

# Blog

{% if site.posts.size > 0 %}
<ul class="post-list">
  {% for post in site.posts %}
  <li>
    <span class="post-meta">{{ post.date | date: "%b %d, %Y" }}</span>
    <h2>
      <a class="post-link" href="{{ post.url | relative_url }}">
        {{ post.title | escape }}
      </a>
    </h2>
    
    {% if post.categories %}
    <div class="post-categories">
      {% for category in post.categories %}
      <span class="category-badge">{{ category }}</span>
      {% endfor %}
    </div>
    {% endif %}
    
    {% if site.show_excerpts %}
      {{ post.excerpt }}
      <a href="{{ post.url | relative_url }}" class="read-more">Read more →</a>
    {% endif %}
  </li>
  {% endfor %}
</ul>

{% if site.paginate %}
  <!-- Pagination links -->
  <div class="pagination">
    {% if paginator.previous_page %}
      <a href="{{ paginator.previous_page_path }}" class="prev">← Newer</a>
    {% endif %}
    
    <span class="page-number">Page {{ paginator.page }} of {{ paginator.total_pages }}</span>
    
    {% if paginator.next_page %}
      <a href="{{ paginator.next_page_path }}" class="next">Older →</a>
    {% endif %}
  </div>
{% endif %}

{% else %}
<p>No posts published yet. Check back soon!</p>
{% endif %}

<style>
.post-list {
  list-style: none;
  padding: 0;
}

.post-list li {
  margin-bottom: 2rem;
  padding-bottom: 2rem;
  border-bottom: 1px solid #e8e8e8;
}

.post-list li:last-child {
  border-bottom: none;
}

.post-meta {
  display: inline-block;
  color: #818181;
  font-size: 0.875rem;
  margin-bottom: 0.5rem;
}

.post-categories {
  margin: 0.5rem 0 1rem 0;
}

.category-badge {
  display: inline-block;
  background-color: #e8e8e8;
  color: #555;
  padding: 0.25rem 0.75rem;
  border-radius: 1rem;
  font-size: 0.75rem;
  margin-right: 0.5rem;
  text-transform: uppercase;
}

.read-more {
  color: #2a7ae2;
  text-decoration: none;
  font-weight: 500;
}

.read-more:hover {
  text-decoration: underline;
}

.pagination {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 2rem;
  margin-top: 2rem;
  padding-top: 2rem;
  border-top: 1px solid #e8e8e8;
}

.pagination a {
  color: #2a7ae2;
  text-decoration: none;
}

.pagination a:hover {
  text-decoration: underline;
}

.page-number {
  color: #818181;
  font-size: 0.875rem;
}
</style>
