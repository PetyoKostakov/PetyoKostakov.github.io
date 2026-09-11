# 📖 COMPLETE SETUP GUIDE

## Installation & Setup

### Step 1: Install Ruby Dependencies
```bash
cd /Users/kostapet/git/PetyoKostakov.github.io
bundle install
```

### Step 2: Run Development Server
```bash
bundle exec jekyll serve
```

### Step 3: Visit Your Site
Open browser → **http://localhost:4000**

---

## 📝 Creating Content

### Blog Posts
Create a new file in `_posts/` with format: `YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: "Your Post Title"
date: 2024-09-09 10:00:00 +0000
categories: [category]
tags: [tag1, tag2]
---

Your content here...
```

### Courses
Create a new file in `_courses/` with format: `course-name.md`

```markdown
---
layout: page
title: "Course Title"
description: "Course description"
level: "Beginner"
topics:
  - Topic 1
  - Topic 2
permalink: /courses/course-url/
---

Course content...
```

---

## 🎨 Customization

### Change Site Settings
Edit `_config.yml`:
```yaml
title: Your Name
email: your-email@example.com
description: Your site description
github_username: your-github
linkedin_username: your-linkedin
```

### Update Homepage
Edit `index.md` - Change title, description, and content

### Update CV
Edit `cv.md` - Add your professional experience

### Update About
Edit `about.md` - Write your bio

---

## 🌐 Deployment

### Deploy to GitHub Pages

1. **Commit your changes:**
   ```bash
   git add .
   git commit -m "Update portfolio"
   git push origin main
   ```

2. **Enable GitHub Pages in settings:**
   - Go to GitHub repository settings
   - Scroll to "GitHub Pages"
   - Select "Deploy from a branch"
   - Choose "main" branch
   - Save

3. **Your site goes live at:**
   https://petyokostakov.github.io

---

## 🆘 Troubleshooting

### Port 4000 Already in Use
```bash
bundle exec jekyll serve --port 4001
```

### Bundle Issues
```bash
bundle clean --force
bundle install
bundle exec jekyll serve
```

### Clear Cache
```bash
bundle exec jekyll clean
```

---

## 📚 Project Structure

```
.
├── index.md              ← Homepage
├── cv.md                 ← CV page
├── blog.md               ← Blog listing
├── courses.md            ← Courses
├── about.md              ← About page
├── 404.md                ← Error page
├── _posts/               ← Blog posts
├── _courses/             ← Courses
├── _layouts/             ← Templates
├── _includes/            ← Components
├── assets/               ← CSS & media
├── _config.yml           ← Configuration
├── Gemfile               ← Dependencies
└── .gitignore            ← Git rules
```

---

## ✅ Commands Reference

| Command | Purpose |
|---------|---------|
| `bundle install` | Install dependencies |
| `bundle update` | Update gems |
| `bundle exec jekyll serve` | Run development server |
| `bundle exec jekyll build` | Build for production |
| `bundle exec jekyll clean` | Clear build cache |
| `JEKYLL_ENV=production bundle exec jekyll build` | Production build |

---

## 📊 Plugin Features

### jekyll-feed
- Automatically generates RSS feed at `/feed.xml`
- Allows readers to subscribe to your blog

### jekyll-seo-tag
- Adds SEO meta tags
- Improves search engine visibility
- Open Graph support

### jekyll-sitemap
- Generates `sitemap.xml`
- Helps search engines crawl your site
- Better SEO

---

## 🎯 Next Steps

1. **Customize Configuration** - Update `_config.yml`
2. **Write Your CV** - Edit `cv.md`
3. **Update About** - Edit `about.md`
4. **Create Blog Posts** - Add to `_posts/`
5. **Create Courses** - Add to `_courses/`
6. **Test Locally** - Run the server and verify
7. **Deploy** - Push to GitHub

---

## 📞 Resources

- [Jekyll Official Docs](https://jekyllrb.com/docs/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Guide](https://pages.github.com/)
- [Liquid Templating](https://shopify.github.io/liquid/)

---

**Your professional Jekyll portfolio is complete and ready to use!**

Start with `bundle exec jekyll serve` and visit http://localhost:4000

Good luck! 🚀
