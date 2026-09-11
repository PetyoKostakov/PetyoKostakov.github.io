# Favicon Generation - Setup Guide

## Automatic Script

A Python script has been created at: `scripts/generate_favicon.py`

This script will generate favicon files from your profile image.

### To Run the Script:

**Step 1: Install Pillow (if not already installed)**

```bash
pip3 install Pillow
```

**Step 2: Run the favicon generation script**

```bash
cd /Users/kostapet/git/PetyoKostakov.github.io
python3 scripts/generate_favicon.py
```

**Step 3: Verify files were created**

```bash
ls -la favicon* apple-touch-icon.png
```

You should see 4 files created.

### What the Script Does:

1. Loads your profile image: `assets/PetyoKostakovProfile.jpg`
2. Crops it to a square (removes any rectangular edges)
3. Generates 4 favicon files:
   - `favicon.ico` (32x32) - Classic browser tab icon
   - `favicon-32x32.png` (32x32) - Modern PNG format
   - `favicon-16x16.png` (16x16) - Small icon
   - `apple-touch-icon.png` (180x180) - iOS home screen icon

### Expected Output Files:

After running the script, you should see these files in your project root:
```
favicon.ico
favicon-32x32.png
favicon-16x16.png
apple-touch-icon.png
```

### HTML Integration:

The favicon links have already been added to `_layouts/default.html`:

```html
<!-- Favicon links -->
<link rel="icon" type="image/x-icon" href="{{ '/favicon.ico' | relative_url }}">
<link rel="icon" type="image/png" sizes="32x32" href="{{ '/favicon-32x32.png' | relative_url }}">
<link rel="icon" type="image/png" sizes="16x16" href="{{ '/favicon-16x16.png' | relative_url }}">
<link rel="apple-touch-icon" href="{{ '/apple-touch-icon.png' | relative_url }}">
```

### Testing:

1. Run the script: `python3 scripts/generate_favicon.py`
2. Verify files exist: `ls -la favicon* apple-touch-icon.png`
3. Start Jekyll: `bundle exec jekyll serve`
4. Check browser tab - you should see your profile photo as the favicon
5. On mobile - "Add to Home Screen" will use the apple-touch-icon

### Troubleshooting:

If the script doesn't run:
- Make sure PIL/Pillow is installed: `pip3 install Pillow`
- Make sure the profile image exists: `ls assets/PetyoKostakovProfile.jpg`
- Check Python is available: `python3 --version`

### Dependencies:

Required: `Pillow` (Python Imaging Library)

Install if needed:
```bash
pip3 install Pillow
```

---

## Manual Alternative

If the script doesn't work, you can:
1. Use an online favicon generator: https://www.favicon-generator.org/
2. Upload your profile image
3. Download the generated files
4. Place them in your project root

---

**Status:** Script ready to execute. Run it to generate your favicons!
