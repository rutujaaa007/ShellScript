#!/bin/bash

echo "--------------------------------------------------"
echo "Checking disk usage on the root (/) partition..."
DISK_USAGE_PERCENT=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE_PERCENT" -gt 80 ]; 
then
    echo "WARNING: Disk usage on the / partition is high!"
    echo "Current usage: ${DISK_USAGE_PERCENT}%"
    echo "It is recommended to free up some space."
else
    echo "Disk usage on the / partition is healthy (${DISK_USAGE_PERCENT}%)."
fi
