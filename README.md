# Coursera Full Course Downloader

**by Wesam Alhasi-Lime Darkk**

A modern GUI application for downloading Coursera courses with full Linux support.

---

## Installation & Setup

### Prerequisites
- Python 3.11+ 
- Linux (tested on Kali Linux)

### Step 1: Install System Dependencies
```bash
sudo apt-get update
sudo apt-get install python3 python3-pip
```

### Step 2: Install Required Python Packages
```bash
pip3 install --user PyQt5 beautifulsoup4 requests six urllib3 pyasn1 keyring configargparse attrs varname pillow backoff rookiepy
```

Or use the requirements file:
```bash
pip3 install --user -r requirements.txt
```

### Step 3: Run the Application

**Easy method - Use the launcher:**
```bash
chmod +x run.sh
./run.sh
```

**Or run directly:**
```bash
python3 maingui.py
```

---

## How to Use

1. **Log in to Coursera** in Firefox, Chrome, or Brave browser
2. **Enroll in the course** you want to download
3. **Open the application**
4. Select your browser from the dropdown
5. Enter the course URL (e.g., `https://www.coursera.org/learn/algorithmic-toolbox`)
6. Choose download folder
7. Select video quality (360p/540p/720p)
8. Select subtitle language (Arabic, English, etc.)
9. Click **"⬇️ Start Download"**

---

## Features

- ✨ Modern gradient UI design
- 🐧 Full Linux support
- 📚 Download complete course materials (videos, assignments, notes)
- 🌍 Multi-language subtitle support (20+ languages including Arabic)
- 🎥 Multiple video quality options
- ⏯️ Resume interrupted downloads

---

## Troubleshooting

**Issue: "Could not load authentication from browser"**
- Close Firefox/Chrome completely  
- Make sure you're logged into coursera.org
- Make sure you're enrolled in the course
- Try: `chmod -R 755 ~/.mozilla` (for Firefox)

**Issue: "Syllabus parsing error"**
- You must be **enrolled** in the course first
- Visit the course page and click "Enroll for Free" or "Audit"

---

## Credits

**Developed by:** Wesam Alhasi-Lime Darkk  
Version: 3.0.1-LimeDarkk

---

## License

This work is licensed under a
[Creative Commons Attribution-NonCommercial 4.0 International License][cc-by-nc].

[![CC BY-NC 4.0][cc-by-nc-image]][cc-by-nc]

[cc-by-nc]: https://creativecommons.org/licenses/by-nc/4.0/
[cc-by-nc-image]: https://licensebuttons.net/l/by-nc/4.0/88x31.png
[cc-by-nc-shield]: https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg
