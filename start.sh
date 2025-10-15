#!/bin/bash

cd "$(dirname "$0")"

echo "Starting Brodmann Areas 3D Viewer..."
echo ""
echo "Server starting on: http://localhost:8000"
echo "Open this URL in your browser: http://localhost:8000/index.html"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

python3 -m http.server 8000
