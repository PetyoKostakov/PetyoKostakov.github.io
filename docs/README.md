# 📖 README - Professional Jekyll Portfolio

A complete, professional Jekyll-based portfolio website with CV, courses, and blog sections.

## 🚀 Quick Start

```bash
cd /Users/kostapet/git/PetyoKostakov.github.io
bundle install
bundle exec jekyll serve
```

Visit: **http://localhost:4000**

---

## 📋 Features

✅ **Professional Design** - Modern, clean aesthetic  
✅ **Responsive Layout** - Mobile, tablet, desktop  
✅ **Blog System** - Posts with categories and tags  
✅ **Course Platform** - Educational content management  
✅ **CV Showcase** - Professional experience display  
✅ **Social Integration** - LinkedIn, GitHub, Email links  
✅ **SEO Optimized** - Built-in SEO plugins  
✅ **Free Hosting** - GitHub Pages ready  

---

## 📁 Project Structure

```
.
├── index.md              # Homepage
├── cv.md                 # CV/Resume page
├── blog.md               # Blog listing
├── courses.md            # Courses page
├── about.md              # About page
├── 404.md                # Error page
├── _posts/               # Blog posts
├── _courses/             # Course content
├── _layouts/             # Page templates
├── _includes/            # Components
├── assets/               # CSS and styles
├── Gemfile               # Ruby dependencies
├── _config.yml           # Site configuration
└── .gitignore            # Git ignore rules
```

---

## 🎨 Customization

### Update Site Settings
Edit `_config.yml`:
```yaml
title: Your Name
email: your-email@example.com
github_username: your-github
linkedin_username: your-linkedin
```

### Create Blog Post
Create `_posts/YYYY-MM-DD-title.md`:
```markdown
---
layout: post
title: "Your Title"
date: 2024-09-09 10:00:00 +0000
categories: [blog]
tags: [tag1, tag2]
---

Content...
```

### Create Course
Create `_courses/course-name.md`:
```markdown
---
layout: page
title: "Course Title"
description: "Description"
level: "Beginner"
topics:
  - Topic 1
  - Topic 2
permalink: /courses/course-url/
---

Content...
```

---

## 🚀 Deployment

### GitHub Pages

1. Commit changes:
   ```bash
   git add .
   git commit -m "Update portfolio"
   git push origin main
   ```

2. Enable GitHub Pages in settings:
   - Settings → Pages
   - Deploy from branch → main
   - Save

3. Site lives at: **https://petyokostakov.github.io**

---

## 🔧 Commands

| Command | Purpose |
|---------|---------|
| `bundle install` | Install gems |
| `bundle update` | Update gems |
| `bundle exec jekyll serve` | Run dev server |
| `bundle exec jekyll build` | Build for production |
| `bundle exec jekyll clean` | Clear cache |

---

## 📦 Tech Stack

- **Jekyll:** 4.3.3 (latest)
- **Theme:** Minima 2.5
- **Plugins:** feed, seo-tag, sitemap
- **Ruby:** 3.4.0+
- **Hosting:** GitHub Pages

---

## ⚙️ Plugins

### jekyll-feed
- Generates RSS feed at `/feed.xml`
- Allows blog subscriptions

### jekyll-seo-tag
- Adds SEO meta tags
- Improves search visibility

### jekyll-sitemap
- Generates `sitemap.xml`
- Helps search engines crawl

---

## 🆘 Troubleshooting

### Port Already in Use
```bash
bundle exec jekyll serve --port 4001
```

### Bundle Issues
```bash
bundle clean --force
bundle install
```

### Clear Cache
```bash
bundle exec jekyll clean
```

See `TROUBLESHOOTING.md` for more help.

---

## 📚 Resources

- [Jekyll Docs](https://jekyllrb.com/docs/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages](https://pages.github.com/)
- [Liquid Templating](https://shopify.github.io/liquid/)

---

## 📞 Support

- Setup help → `SETUP_GUIDE.md`
- Quick start → `QUICKSTART.md`
- Troubleshooting → `TROUBLESHOOTING.md`

---

## ✅ Status

**Project:** Complete  
**Version:** 1.0  
**Jekyll:** 4.3.3  
**Ready:** ✅ YES  

---

**Your professional portfolio is ready to launch!** 🌟

Good luck! 🚀
