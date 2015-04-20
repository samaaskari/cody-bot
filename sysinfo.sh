#!/bin/bash

echo
echo "Hostname: $HOSTNAME"
echo "Linux version: $(cat /etc/issue|head -1)"
echo "Architecture: $(uname -m)"
echo "User: $USER (ID $(id -u))"
echo "Processes: $(ps -ef|wc -l)"
echo "Users: $(grep -Ev '^#' /etc/passwd|wc -l)"
echo "Cores: $(grep '^core id' /proc/cpuinfo|sort -u|wc -l)"
echo "Total memory: $(free|grep Mem|awk '{print $2}') KB"
echo "Installed packages: $(rpm -qa|wc -l)"
echo "Internet address(es): $(hostname -I)"
