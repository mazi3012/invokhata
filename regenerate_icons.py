#!/usr/bin/env python3
"""
Regenerate Android launcher icons from transparent source PNG
"""

from PIL import Image
import os

def create_centered_icon(source_path, target_size, output_path):
    """Create a centered icon from source image"""
    # Open source image
    src_img = Image.open(source_path)
    
    # Create transparent canvas of target size
    canvas = Image.new('RGBA', target_size, (0, 0, 0, 0))
    
    # Calculate scaling to fit within target while maintaining aspect ratio
    src_ratio = src_img.width / src_img.height
    target_ratio = target_size[0] / target_size[1]
    
    if src_ratio > target_ratio:
        # Source is wider, fit to width
        new_width = target_size[0]
        new_height = int(new_width / src_ratio)
    else:
        # Source is taller, fit to height
        new_height = target_size[1]
        new_width = int(new_height * src_ratio)
    
    # Resize source image
    resized = src_img.resize((new_width, new_height), Image.Resampling.LANCZOS)
    
    # Calculate position to center the image
    left = (target_size[0] - new_width) // 2
    top = (target_size[1] - new_height) // 2
    
    # Paste resized image onto canvas
    canvas.paste(resized, (left, top), resized if resized.mode == 'RGBA' else None)
    
    # Save the result
    canvas.save(output_path, 'PNG')
    print(f"Generated: {output_path} ({target_size[0]}x{target_size[1]})")

def main():
    # Portable: use this script's location instead of a hardcoded machine path
    base_dir = os.path.dirname(os.path.abspath(__file__))
    source_logo = os.path.join(base_dir, "assets/branding/invokhata_logo.png")
    
    # Define icon sizes for different densities
    # Standard launcher icon sizes (based on 48dp base)
    launcher_sizes = {
        'mdpi': (48, 48),
        'hdpi': (72, 72),
        'xhdpi': (96, 96),
        'xxhdpi': (144, 144),
        'xxxhdpi': (192, 192)
    }
    
    # Launch logo sizes (appears to be 1.5x launcher sizes)
    launch_sizes = {
        'mdpi': (72, 72),
        'hdpi': (108, 108),
        'xhdpi': (144, 144),
        'xxhdpi': (216, 216),
        'xxxhdpi': (288, 288)
    }
    
    print("Regenerating Android launcher icons...")
    
    # Generate launcher icons (ic_launcher)
    for density, size in launcher_sizes.items():
        output_dir = os.path.join(base_dir, f"android/app/src/main/res/mipmap-{density}")
        output_path = os.path.join(output_dir, "ic_launcher.png")
        create_centered_icon(source_logo, size, output_path)
    
    # Generate launch logos
    for density, size in launch_sizes.items():
        output_dir = os.path.join(base_dir, f"android/app/src/main/res/mipmap-{density}")
        output_path = os.path.join(output_dir, "launch_logo.png")
        create_centered_icon(source_logo, size, output_path)
    
    print("Icon regeneration complete!")

if __name__ == "__main__":
    main()