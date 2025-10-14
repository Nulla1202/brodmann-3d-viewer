#!/bin/bash

# Deployment script for Brodmann Areas 3D Viewer

echo "========================================="
echo "Brodmann Areas 3D Viewer - Deployment"
echo "========================================="
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: Brodmann Areas 3D Viewer"
    echo "✓ Git repository initialized"
    echo ""
    echo "Next steps:"
    echo "1. Create a repository on GitHub: https://github.com/new"
    echo "2. Run these commands:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/brodmann-3d-viewer.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
    echo ""
    echo "3. Enable GitHub Pages:"
    echo "   - Go to repository Settings > Pages"
    echo "   - Source: Deploy from a branch"
    echo "   - Branch: main, folder: / (root)"
    echo "   - Save"
    echo ""
else
    echo "Git repository already exists."
    echo "Checking for changes..."

    if [[ -n $(git status -s) ]]; then
        echo "Changes detected. Committing..."
        git add .
        read -p "Enter commit message: " commit_msg
        git commit -m "$commit_msg"

        echo "Pushing to remote..."
        git push

        echo "✓ Deployment complete!"
        echo ""
        echo "Your site will be updated in about 1 minute at:"
        echo "https://YOUR_USERNAME.github.io/brodmann-3d-viewer/"
    else
        echo "No changes to commit."
    fi
fi

echo ""
echo "========================================="
echo "Deployment script finished"
echo "========================================="
