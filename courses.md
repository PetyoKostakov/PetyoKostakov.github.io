---
layout: page
title: Courses
permalink: /courses/
---

# Courses

I create educational content to help others learn software development, DevOps, and professional skills.

{% if site.courses.size > 0 %}
<div class="courses-grid">
  {% for course in site.courses %}
  <div class="course-card">
    <h3><a href="{{ course.url | relative_url }}">{{ course.title }}</a></h3>
    <p class="course-level">{{ course.level | default: "Beginner" }}</p>
    <p class="course-description">{{ course.description }}</p>
    
    {% if course.topics %}
    <div class="course-topics">
      <strong>Topics:</strong>
      <ul>
        {% for topic in course.topics %}
        <li>{{ topic }}</li>
        {% endfor %}
      </ul>
    </div>
    {% endif %}
    
    <a href="{{ course.url | relative_url }}" class="course-link">View Course →</a>
  </div>
  {% endfor %}
</div>
{% else %}
<div class="empty-state">
  <p>No courses published yet. I'm working on creating comprehensive educational content. Check back soon!</p>
</div>
{% endif %}

<style>
.courses-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.course-card {
  border: 1px solid #e8e8e8;
  border-radius: 0.5rem;
  padding: 1.5rem;
  background: #fafafa;
  transition: all 0.3s ease;
}

.course-card:hover {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-color: #2a7ae2;
  transform: translateY(-2px);
}

.course-card h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.course-card h3 a {
  color: #2a7ae2;
  text-decoration: none;
}

.course-card h3 a:hover {
  text-decoration: underline;
}

.course-level {
  display: inline-block;
  background-color: #2a7ae2;
  color: white;
  padding: 0.25rem 0.75rem;
  border-radius: 0.25rem;
  font-size: 0.75rem;
  font-weight: 500;
  margin-bottom: 1rem;
  text-transform: uppercase;
}

.course-description {
  color: #555;
  line-height: 1.6;
  margin-bottom: 1rem;
}

.course-topics {
  background: white;
  padding: 1rem;
  border-radius: 0.25rem;
  margin: 1rem 0;
}

.course-topics strong {
  display: block;
  margin-bottom: 0.5rem;
  color: #333;
}

.course-topics ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.course-topics li {
  padding: 0.25rem 0;
  color: #666;
  font-size: 0.9rem;
}

.course-topics li:before {
  content: "→ ";
  color: #2a7ae2;
  font-weight: bold;
  margin-right: 0.5rem;
}

.course-link {
  display: inline-block;
  color: #2a7ae2;
  text-decoration: none;
  font-weight: 500;
  margin-top: 1rem;
}

.course-link:hover {
  text-decoration: underline;
}

.empty-state {
  text-align: center;
  padding: 3rem 1rem;
  color: #818181;
}

@media (max-width: 768px) {
  .courses-grid {
    grid-template-columns: 1fr;
  }
}
</style>
