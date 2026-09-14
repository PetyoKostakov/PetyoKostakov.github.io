#!/usr/bin/env python3
"""
Create favicon files from profile image
"""
from PIL import Image
import os

# Load the profile image
profile_path = '/Users/kostapet/git/PetyoKostakov.github.io/assets/PetyoKostakovProfile.jpg'
output_dir = '/Users/kostapet/git/PetyoKostakov.github.io'

try:
    img = Image.open(profile_path)

    # Create a square crop (for circular image to work well as favicon)
    size = min(img.width, img.height)
    left = (img.width - size) // 2
    top = (img.height - size) // 2
    right = left + size
    bottom = top + size

    img_square = img.crop((left, top, right, bottom))

    # Generate favicon.ico (32x32)
    favicon_img = img_square.resize((32, 32), Image.Resampling.LANCZOS)
    favicon_img.save(os.path.join(output_dir, 'favicon.ico'), format='ICO')
    print("favicon.ico created")

    # Generate apple-touch-icon.png (180x180 for iOS)
    apple_icon = img_square.resize((180, 180), Image.Resampling.LANCZOS)
    apple_icon.save(os.path.join(output_dir, 'apple-touch-icon.png'), format='PNG')
    print("apple-touch-icon.png created")

    # Generate favicon-32x32.png
    favicon_32 = img_square.resize((32, 32), Image.Resampling.LANCZOS)
    favicon_32.save(os.path.join(output_dir, 'favicon-32x32.png'), format='PNG')
    print("favicon-32x32.png created")

    # Generate favicon-16x16.png
    favicon_16 = img_square.resize((16, 16), Image.Resampling.LANCZOS)
    favicon_16.save(os.path.join(output_dir, 'favicon-16x16.png'), format='PNG')
    print("favicon-16x16.png created")

    print("All favicon files created successfully!")

except Exception as e:
    print(f"Error: {e}")
    import traceback
    traceback.print_exc()
