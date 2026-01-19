# 🔧 DevOps Networking Lab

![Networking](https://img.shields.io/badge/Networking-DevOps-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-green)
![Git](https://img.shields.io/badge/Git-Git%20Bash-orange)

A hands-on networking lab demonstrating essential DevOps network troubleshooting skills on Windows (using Git Bash) and Linux systems.

## 📋 Project Overview

This repository contains practical exercises and documentation for:
- Network configuration and IP addressing
- Connectivity testing and diagnostics
- Port/service inspection
- DNS resolution and troubleshooting
- Network path analysis
- Cross-platform command comparisons

## 🗂️ Repository Structure

```
devops-networking-lab/
├── README.md
├── LICENSE
├── .gitignore
│
├── screenshots/
│   ├── linux/
│   │   ├── ip-command.png
│   │   ├── ping-test.png
│   │   ├── ss-ports.png
│   │   └── traceroute.png
│   │
│   └── windows/
│       ├── ipconfig.png
│       ├── netstat-ports.png
│       ├── nslookup.png
│       └── tracert.png
│
├── docs/
│   ├── network-report.md
│   └── command-cheatsheet.md
│
├── scripts/
│   ├── network-check.ps1
│   └── network-scan.sh
│
└── reports/
    └── network-analysis.pdf
```

## 🚀 Quick Start with Git Bash

```bash
# Clone repository
git clone https://github.com/YOUR-USERNAME/devops-networking-lab.git
cd devops-networking-lab

# Make scripts executable (Linux)
chmod +x scripts/network-scan.sh

# Run network scan
./scripts/network-scan.sh

# On Windows PowerShell (separate terminal)
powershell -ExecutionPolicy Bypass -File scripts/network-check.ps1
```

## 📊 Lab Exercises

### 1️⃣ Basic Network Commands
**In Git Bash (Linux commands on Windows):**
```bash
# IP configuration
ip addr show
# OR
ifconfig

# Ping test
ping -c 4 8.8.8.8

# Check open ports
netstat -tuln
```

**In Windows CMD/PowerShell:**
```cmd
ipconfig /all
ping 8.8.8.8 -n 4
netstat -abno
```

### 2️⃣ Advanced Diagnostics
```bash
# DNS resolution (Git Bash)
nslookup google.com
dig google.com

# Traceroute (if installed in Git Bash)
traceroute 8.8.8.8
# OR
tracert 8.8.8.8  # Uses Windows command
```

## 📸 How to Take Screenshots in Git Bash

### **Method 1: Using Windows Snipping Tool**
1. Open Git Bash and run commands
2. Press `Windows + Shift + S` to capture screen area
3. Save as PNG in `screenshots/` folder

### **Method 2: Using Print Screen**
1. Arrange Git Bash window
2. Press `Alt + Print Screen` for active window
3. Paste in Paint and save

### **Method 3: Command Output to File**
```bash
# Save command output to file
ip addr show > docs/ip-output.txt
netstat -tuln > docs/ports-output.txt

# Combine multiple commands
{
    echo "=== Network Report ==="
    date
    echo ""
    echo "IP Configuration:"
    ip addr show
    echo ""
    echo "Open Ports:"
    netstat -tuln
} > reports/full-report.txt
```

## 📝 Sample Commands for Screenshots

### **Linux/Git Bash Screenshots:**
```bash
# 1. System info
uname -a
ip addr show

# 2. Connectivity
ping -c 4 google.com
curl -I https://google.com

# 3. Network stats
netstat -tuln | head -20
ss -tuln

# 4. DNS
nslookup github.com
cat /etc/resolv.conf

# 5. Routing
route -n
traceroute 8.8.8.8
```

### **Windows CMD Screenshots:**
```cmd
# Open separate CMD window
ipconfig /all
ping 8.8.8.8
netstat -abno | findstr LISTENING
nslookup google.com
tracert 8.8.8.8
```

## 🛠️ Included Scripts

### **Linux Bash Script** (`scripts/network-scan.sh`):
```bash
#!/bin/bash
echo "=== Network Diagnostics ==="
echo "Date: $(date)"
echo ""
echo "1. IP Configuration:"
ip -br addr show
echo ""
echo "2. Connectivity Test:"
ping -c 2 8.8.8.8
echo ""
echo "3. Listening Ports:"
ss -tuln | head -10
```

### **Windows PowerShell Script** (`scripts/network-check.ps1`):
```powershell
Write-Host "Windows Network Diagnostics" -ForegroundColor Cyan
Test-Connection 8.8.8.8 -Count 2
Get-NetTCPConnection -State Listen | Select-Object -First 5
Resolve-DnsName google.com
```

## 📁 How to Add Screenshots to Repository

```bash
# 1. Take screenshots and save in screenshots/ folder

# 2. Check what files to add
git status

# 3. Add specific screenshot
git add screenshots/linux/ip-command.png

# 4. Or add all new files
git add .

# 5. Commit with message
git commit -m "Add network command screenshots"

# 6. Push to GitHub
git push origin main
```

## 🔄 Git Bash Commands Cheat Sheet

```bash
# Basic Git operations
git status                    # Check status
git add .                     # Add all changes
git commit -m "message"       # Commit changes
git push origin main          # Push to GitHub
git pull origin main          # Pull latest changes

# Branch management
git branch                    # List branches
git checkout -b new-feature   # Create new branch
git merge branch-name         # Merge branches

# Network commands in Git Bash
ifconfig                      # Network interfaces
netstat -tuln                 # Open ports
ping -c 4 host                # Ping with count
traceroute host               # Route tracing
nslookup domain               # DNS lookup
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Add your screenshots/docs
4. Commit changes
5. Push to branch
6. Create Pull Request

## 📄 License

MIT License - see LICENSE file for details.

## ✨ Author
[Darshan jangid]
- GitHub: [@darshudevseops](https://github.com/darshudevseops)

