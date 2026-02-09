#!/bin/bash

echo "================================================"
echo " Coursera Downloader - by Wesam Alhasi-Lime Darkk"
echo "================================================"
echo ""

# Check if running in Kali Linux or similar Debian-based system
cd "$(dirname "$0")"

# Try to install rookiepy using python3.12 if available, else use workaround
if command -v python3.12 &> /dev/null; then
    echo "Using Python 3.12..."
    python3.12 -m pip install --user rookiepy 2>/dev/null || true
    python3.12 maingui.py
elif command -v python3.11 &> /dev/null; then
    echo "Using Python 3.11..."
    python3.11 -m pip install --user rookiepy 2>/dev/null || true
    python3.11 maingui.py
else
    echo "Using Python 3 (may have compatibility issues with rookiepy)..."
    echo "Installing dependencies..."
    
    # Try to install rookiepy, but continue even if it fails
    export PYO3_USE_ABI3_FORWARD_COMPATIBILITY=1
    python3 -m pip install --user rookiepy --break-system-packages 2>/dev/null || echo "Note: rookiepy installation skipped (Python version incompatibility)"
    
    # Install other dependencies
    python3 -m pip install --user PyQt5 beautifulsoup4 requests six urllib3 pyasn1 keyring configargparse attrs varname pillow backoff --break-system-packages 2>/dev/null
    
    echo ""
    echo "Starting application..."
    python3 maingui.py
fi
