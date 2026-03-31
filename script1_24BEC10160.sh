#!/bin/bash
YOUR_NAME="Sparsh Kumar Suman"
ROLL="24BAI10205"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release 2>/dev/null | cut -d'=' -f2 | tr -d '"')
DATE=$(date)

echo "------ System Identity Report ------"
echo "User       : $USER_NAME"
echo "Kernel     : $KERNEL"
echo "Uptime     : $UPTIME"
echo "Distro     : ${DISTRO:-Unknown}"
echo "Date       : $DATE"

echo "\nAdditional distro info:" 
cat /etc/os-release 2>/dev/null || echo "No /etc/os-release found"

echo "\nLicense: GPL v2"