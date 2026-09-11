---
layout: default
---

<div class="home-hero">
  <img
    class="profile-photo profile-photo--hero"
    src="{{ '/assets/PetyoKostakovProfile.jpg' | relative_url }}"
    alt="{{ site.title | escape }}"
    width="200"
    height="200">
  <h1>Welcome to My Professional Portfolio</h1>
  <p>{{ site.description }}</p>
  
  <div class="cta-buttons">
    <a href="{{ '/cv' | relative_url }}" class="btn btn-primary">View My CV</a>
    <a href="{{ '/learning' | relative_url }}" class="btn btn-secondary">My Learning</a>
  </div>
</div>

<div class="home-sections">
  <section class="section-about">
    <h2>About Me</h2>
    <p>
      I'm a passionate software developer and technology enthusiast with expertise in 
      full-stack development, cloud infrastructure, and DevOps. I'm committed to
      continuous learning and sharing what I pick up along the way.
    </p>
  </section>

  <section class="section-recent-posts">
    <h2>Latest Blog Posts</h2>
    <ul class="post-list">
      {% for post in site.posts limit:3 %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %d, %Y" }}</span>
        <h3>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
        </h3>
        {% if site.show_excerpts %}
          {{ post.excerpt }}
        {% endif %}
      </li>
      {% endfor %}
    </ul>
    
    {% if site.posts.size > 3 %}
    <p class="rss-subscribe">
      <a href="{{ "/blog" | relative_url }}">View all posts →</a>
    </p>
    {% endif %}
  </section>

  <section class="section-recent-learning">
    <h2>Recent Learning</h2>
    {% assign recent_learning = site.learning | sort: "date" | reverse %}
    {% if recent_learning.size > 0 %}
    <ul class="post-list">
      {% for item in recent_learning limit:3 %}
      <li>
        <span class="post-meta">{{ item.date | date: "%b %Y" }}</span>
        <h3>
          {% if item.content != blank %}
            <a class="post-link" href="{{ item.url | relative_url }}">{{ item.title | escape }}</a>
          {% else %}
            {{ item.title | escape }}
          {% endif %}
        </h3>
        {% if item.organization %}
        <p>{{ item.organization }}</p>
        {% endif %}
      </li>
      {% endfor %}
    </ul>

    {% if recent_learning.size > 3 %}
    <p class="rss-subscribe">
      <a href="{{ '/learning' | relative_url }}">View all learning &rarr;</a>
    </p>
    {% endif %}
    {% else %}
    <p>Nothing published here yet &mdash; check back soon.</p>
    {% endif %}
  </section>
</div>

<style>
.home-hero {
  text-align: center;
  padding: 3rem 0;
}

.home-hero h1 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.cta-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
  margin-top: 2rem;
}

.btn {
  display: inline-block;
  padding: 0.75rem 1.5rem;
  border-radius: 0.25rem;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.3s ease;
}

.btn-primary {
  background-color: #2a7ae2;
  color: white;
}

.btn-primary:hover {
  background-color: #1e5fa3;
}

.btn-secondary {
  background-color: #e8e8e8;
  color: #333;
}

.btn-secondary:hover {
  background-color: #d0d0d0;
}

.home-sections {
  display: grid;
  grid-template-columns: 1fr;
  gap: 3rem;
  margin-top: 3rem;
}

@media (max-width: 768px) {
  .home-hero h1 {
    font-size: 2rem;
  }
  
  .cta-buttons {
    flex-direction: column;
  }
}
</style>

