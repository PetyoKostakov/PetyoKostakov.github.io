---
layout: post
title:  "Getting Started with Jekyll"
date:   2024-09-09 10:00:00 +0000
categories: [jekyll, tutorial, web-development]
tags: [jekyll, static-sites, github-pages]
---

# Getting Started with Jekyll

Jekyll is a static site generator that's perfect for creating blogs, portfolios, and documentation sites. In this post, I'll walk you through the basics of getting started.

## Why Jekyll?

Jekyll is an excellent choice for developers because:
- **Simple**: Write content in Markdown
- **Fast**: Static sites load quickly
- **Secure**: No database vulnerabilities
- **GitHub Pages**: Free hosting on GitHub
- **Flexible**: Highly customizable with Liquid templating

## Installation

To get started with Jekyll, you'll need Ruby installed on your system. Then:

```bash
gem install bundler jekyll
jekyll new my-awesome-site
cd my-awesome-site
bundle exec jekyll serve
```

Your site will be available at `http://localhost:4000`.

## Project Structure

A typical Jekyll project looks like:

```
.
├── _config.yml      # Configuration file
├── _posts/          # Blog posts
├── _layouts/        # Page templates
├── _includes/       # Reusable components
├── assets/          # CSS, JS, images
└── index.md         # Homepage
```

## Writing Posts

Create a new file in `_posts/` with the format: `YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: My First Post
date: 2024-09-09
categories: [blog]
---

Content goes here...
```

## Next Steps

- Customize the theme
- Add your content
- Deploy to GitHub Pages
- Build your audience

Jekyll makes it easy to create a professional online presence without worrying about server management or complex deployments.

Happy blogging!
