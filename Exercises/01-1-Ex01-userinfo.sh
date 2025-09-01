#!/bin/bash

# Ask for username
read -p "Please enter your username: " username

echo
echo "================================"
echo "  Hello, $username!"
echo "  Here is some info about your computer:"
echo "================================"
echo

# Hostname (computer name)
echo "Computer Name: $(hostname)"

# Logged-in user
echo "Logged-in User: $USER"

# OS version
echo "Operating System: $(uname -s) $(uname -r)"

# Current date and time
echo "Date: $(date +"%Y-%m-%d")"
echo "Time: $(date +"%H:%M:%S")"

# Processor info
echo
echo "Processor Info:"
uname -p 2>/dev/null || uname -m

# Total memory
echo
echo "Total RAM:"
if command -v free >/dev/null 2>&1; then
    free -h | awk '/Mem:/ {print $2}'
elif command -v sysctl >/dev/null 2>&1; then
    sysctl -n hw.memsize | awk '{printf "%.2f GB\n", $1/1024/1024/1024}'
fi

