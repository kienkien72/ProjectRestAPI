#!/bin/bash

# Directory for product images
PRODUCT_DIR="/home/ndkien72/SCHOOL/ProjectTeam/ProjectRestAPI/src/main/webapp/resources/client/images/products"
BRAND_DIR="/home/ndkien72/SCHOOL/ProjectTeam/ProjectRestAPI/src/main/webapp/resources/client/images/brands"

# Create directories
mkdir -p "$PRODUCT_DIR"
mkdir -p "$BRAND_DIR"

# Create placeholder text files for images (since we can't download actual images)
echo "Creating placeholder files for product images..."

# Product image placeholders
touch "$PRODUCT_DIR/macbook-pro-14-m3.jpg"
touch "$PRODUCT_DIR/macbook-air-m2-13.jpg"
touch "$PRODUCT_DIR/dell-xps-15.jpg"
touch "$PRODUCT_DIR/hp-spectre-x360.jpg"
touch "$PRODUCT_DIR/thinkpad-x1-carbon.jpg"
touch "$PRODUCT_DIR/rog-zephyrus-g16.jpg"
touch "$PRODUCT_DIR/predator-helios-16.jpg"
touch "$PRODUCT_DIR/msi-stealth-16.jpg"

# Brand logo placeholders
echo "Creating placeholder files for brand logos..."
touch "$BRAND_DIR/apple-logo.png"
touch "$BRAND_DIR/dell-logo.png"
touch "$BRAND_DIR/hp-logo.png"
touch "$BRAND_DIR/lenovo-logo.png"
touch "$BRAND_DIR/asus-logo.png"
touch "$BRAND_DIR/acer-logo.png"
touch "$BRAND_DIR/msi-logo.png"
touch "$BRAND_DIR/gigabyte-logo.png"

echo "Placeholder files created successfully!"
echo "Note: These are empty placeholder files. Replace them with actual images."