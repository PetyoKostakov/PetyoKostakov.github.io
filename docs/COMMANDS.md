# 🎯 COMMAND REFERENCE - Everything You Need

## THE EXACT COMMANDS TO RUN

### Copy & Paste These (In Order)

```bash
# Navigate to project
cd /Users/kostapet/git/PetyoKostakov.github.io

# Update gems with the fix
bundle update

# Start your server
bundle exec jekyll serve
```

### That's It!
Then visit: **http://localhost:4000**

---

## When You See This, You're Good! ✅

```
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
```

**No warnings. No errors. Just your portfolio!** 🎉

---

## To Stop the Server

Press: **Ctrl+C**

---

## If Port 4000 is Busy

```bash
bundle exec jekyll serve --port 4001
# Then visit: http://localhost:4001
```

---

## To Clean & Restart

```bash
bundle clean --force
bundle update
bundle exec jekyll serve
```

---

## To Build for Production

```bash
JEKYLL_ENV=production bundle exec jekyll build
```

---

## To Deploy to GitHub

```bash
git add .
git commit -m "Update portfolio"
git push origin main
```

---

## Common Issues & Fixes

### "Port already in use"
```bash
bundle exec jekyll serve --port 4001
```

### "Gem not found"
```bash
bundle update
```

### "Still getting errors"
```bash
bundle clean --force
bundle install
bundle update
```

---

## What Was Fixed

```ruby
# Your Gemfile now has these gems:
gem "csv", "~> 3.0"           # Fixes the warning
gem "base64", "~> 0.2"        # Fixes the error
```

---

## Files to Know About

| File | Purpose |
|------|---------|
| `_config.yml` | Site settings |
| `index.md` | Homepage |
| `cv.md` | Your CV |
| `_posts/` | Blog posts |
| `_courses/` | Your courses |
| `Gemfile` | Dependencies (UPDATED) |

---

## Documentation Files

| File | Read When |
|------|-----------|
| `README.md` | Need complete guide |
| `QUICKSTART.md` | Need fast setup |
| `SETUP_GUIDE.md` | Need detailed setup |
| `TROUBLESHOOTING.md` | Having issues |

---

## Verification Commands

```bash
# Check Ruby version
ruby -v

# Check gems are installed
cat Gemfile | grep -E "csv|base64"

# Check Jekyll works
bundle exec jekyll --version

# Check everything with verification script
bash verify_setup.sh
```

---

## Your Project Structure

```
PetyoKostakov.github.io/
├── index.md              # Homepage
├── cv.md                 # Your CV
├── blog.md               # Blog listing
├── courses.md            # Courses
├── about.md              # About you
├── _posts/               # Blog posts
├── _courses/             # Your courses
├── _config.yml           # Configuration (UPDATED)
├── Gemfile               # Dependencies (UPDATED)
├── TROUBLESHOOTING.md    # Help guide
└── ... (more files)
```

---

## The Three Magic Commands

```bash
# 1. Install/update everything
bundle update

# 2. Start your server
bundle exec jekyll serve

# 3. Visit your site
# http://localhost:4000
```

---

## What Happens After

1. You run `bundle exec jekyll serve`
2. Jekyll starts
3. You see the "Server running" message
4. You visit http://localhost:4000
5. You see your beautiful portfolio! 🌟

---

## Pro Tips

- Keep the server running while you develop
- Edit files and just refresh the browser
- Changes appear instantly
- Press Ctrl+C to stop the server
- Run it again to restart

---

## One Command Cheat

Copy & paste this entire thing:

```bash
cd /Users/kostapet/git/PetyoKostakov.github.io && bundle update && bundle exec jekyll serve
```

Then open: **http://localhost:4000**

---

## Still Need Help?

```bash
# Check everything is working
bash verify_setup.sh

# See what's wrong
cat TROUBLESHOOTING.md

# Need quick start
cat QUICKSTART.md

# Need full guide
cat README.md
```

---

## Summary

**Your Issue:** Ruby 3.4.0+ warnings  
**The Fix:** Added csv & base64 gems (DONE ✅)  
**To Run:** See commands above  
**Status:** Ready to go! 🚀

---

**That's everything you need!** Good luck! 🎉
