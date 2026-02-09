# Linux Setup Guide
**by Wesam Alhasi-Lime Darkk**

## Quick Start (Easy Method)

Simply run the launcher script:
```bash
./run.sh
```

## Manual Setup

### 1. Install System Dependencies
```bash
sudo apt-get update
sudo apt-get install python3-pyqt5 python3-pip
```

### 2. Install Python Packages
```bash
pip3 install --user PyQt5 beautifulsoup4 requests six urllib3 pyasn1 keyring configargparse attrs varname pillow backoff
```

### 3. Install rookiepy (Optional - for browser cookie support)
**Note:** rookiepy has compatibility issues with Python 3.13+

If you have Python 3.12 or earlier:
```bash
pip3 install --user rookiepy
```

For Python 3.13+, use this workaround:
```bash
export PYO3_USE_ABI3_FORWARD_COMPATIBILITY=1
pip3 install --user rookiepy --break-system-packages
```

### 4. Run the Application
```bash
python3 maingui.py
```

## Troubleshooting

### Issue: "ModuleNotFoundError: No module named 'rookiepy'"
**Solution:** rookiepy is used to fetch browser cookies. If it fails to install:
- Try using Python 3.12 or 3.11 if available
- Or manually provide authentication cookies through the app

### Issue: PyQt5 won't install via pip
**Solution:** Install system package instead:
```bash
sudo apt-get install python3-pyqt5
```

### Issue: Icon not showing
**Solution:** The app now supports both `.ico` and `.png` icons for Linux compatibility.

## Features
- ✨ Modern, beautiful GUI with gradient styling
- 🐧 Full Linux compatibility
- 📦 Download complete Coursera courses
- 🎥 Multiple video quality options (360p, 540p, 720p)
- 📝 Download assignments, notes, and all resources
- 🌍 Multi-language subtitle support
- ⏯️ Resume interrupted downloads

## Credits
- **Developed by:** Wesam Alhasi-Lime Darkk
