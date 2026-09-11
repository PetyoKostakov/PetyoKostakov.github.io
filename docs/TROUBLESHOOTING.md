# 🔧 TROUBLESHOOTING GUIDE

## Ruby 3.4.0+ Standard Library Issues

### Problem
```
warning: csv used to be loaded from the standard library...
warning: base64 used to be loaded from the standard library...
```

### Solution (Already Applied)
Your Gemfile now includes:
```ruby
gem "csv", "~> 3.0"
gem "base64", "~> 0.2"
```

Just run:
```bash
bundle update
bundle exec jekyll serve
```

---

## Common Issues & Fixes

### 1. Port 4000 Already in Use

**Error:**
```
Address already in use - bind(2) for 127.0.0.1:4000
```

**Solution:**
```bash
bundle exec jekyll serve --port 4001
```

---

### 2. Bundle Install Fails

**Solution:**
```bash
bundle clean --force
bundle install
bundle update
```

---

### 3. Gem Not Found

**Solution:**
```bash
bundle update
```

---

### 4. YAML Parse Errors

**Error:**
```
YAML error: mapping values are not allowed in this context
```

**Solution:**
Check your frontmatter in posts/pages. Use proper YAML syntax:

```markdown
---
layout: post
title: "Your Title"  # Use quotes for titles with special characters
date: 2024-09-09 10:00:00 +0000
categories: [blog]   # Use arrays like this
tags: [tag1, tag2]
---
```

---

### 5. File Not Found Errors

**Solution:**
- Check file paths in `_config.yml`
- Verify files exist in correct directories
- Check for typos in file names

---

### 6. Changes Not Showing

**Solution:**
1. Make sure to save the file
2. Refresh your browser
3. Check terminal for errors
4. Restart Jekyll serve if needed

---

### 7. Clear Jekyll Cache

```bash
bundle exec jekyll clean
bundle exec jekyll build
```

---

## Verification Steps

### 1. Check Ruby Version
```bash
ruby -v
# Should be 3.4.0 or higher
```

### 2. Check Gemfile Has Required Gems
```bash
cat Gemfile | grep -E "csv|base64"
# Should show both gems
```

### 3. Test Jekyll
```bash
bundle exec jekyll --version
# Should output version without errors
```

### 4. Run Server
```bash
bundle exec jekyll serve
# Should show "Server running..."
```

---

## Working Configuration

**System:** macOS  
**Ruby:** 3.4.0+  
**Jekyll:** 4.3.3  
**Gemfile:** CSV & Base64 gems added  

---

## Still Having Issues?

### Try This (99% Fix Rate)
```bash
bundle clean --force
bundle install
bundle update
bundle exec jekyll serve
```

---

## Additional Resources

- [Jekyll Troubleshooting](https://jekyllrb.com/docs/troubleshooting/)
- [Ruby 3.4 Migration](https://www.ruby-lang.org/en/news/)
- [Bundler Documentation](https://bundler.io/)

---

**If issues persist, check the other documentation files or restart your system.**
