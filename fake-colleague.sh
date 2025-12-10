#!/bin/bash
set -e
REPO_URL="$1"
cd ..
mkdir -p fake_col
cd fake_col/
git clone "$REPO_URL" repo_collegue
cd repo_collegue/
git checkout feature-color
echo "Je suis un fake" > fake_file.txt
git add fake_file.txt
git commit -m "[ADD]: Add New file fake_file.txt"
git push origin feature-color
