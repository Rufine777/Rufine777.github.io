#!/bin/bash

# 1. Build the Hugo site
hugo -t hugo-split-theme

# 2. Remove old static files from root except source files
rm -rf index.html 404.html about contact categories tags sitemap.xml
rm -rf assets/ # only if Hugo generated assets here

# 3. Copy the generated site from public/ to root
cp -r public/* .

# 4. Add changes to git
git add .
git commit -m "Deploy updated site" 2>/dev/null

# 5. Push to GitHub
git push origin main#!/bin/bash


