#!/bin/bash
# DevOps Networking Lab - Windows Network scan
# Run this in Windows Powershell and CMD

echo "========================================="
echo "    NETWORK DIAGNOSTICS REPORT"
echo "========================================="
echo "=== 1. SYSTEM INFORMATION ==="
echo "Kernal: $(uname -r)"
echo ""

echo "=== 2. NETWORK INTERFACES ==="
echo "Using 'ip addr show' :"
ip addr show | grep -E "(inet|ether|state)" | head -20
echo ""
echo "=== 3. CONNECTIVITY TEST ==="
echo "Pinging Google DNS (8.8.8.8):"
if ping -c 2 8.8.8.8 &> /dev/null; then
     echo " ✓ Connection SUCCESSFUL"
     ping -c 2 8.8.8.8 | tail -2
else
     echo " X connection FAILED"
fi
echo ""

echo "=== 4. OPEN PORTS ==="
echo "Top 10 listening TCP ports:"
ss -tuln | heaf -12
echo ""
e

echo "=== 5. DNS RESOLUTION ==="
ECHO "Resolving 'google.com':"
nslookup google.com 2> /dev/null | grep -A2 "Name:"
echo ""

echo "=== 6. ROUTING TABLE ==="
echo "Default gateway and routes:"
ip route show | head -5
echo ""

echo "=== 7. NETWORK STATISTICS ==="
echo " Connection summary:"
ss -s | head -5
echo ""
echo "==========================================="
echo "     Scan completed successfully!"
echo "==========================================="
