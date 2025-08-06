#!/bin/bash

echo "System Health Check Summary"

TOTAL_PROCESSES=$(ps -e | wc -l)
echo "Total number of running processes: ${TOTAL_PROCESSES}"

HIGH_MEM_PROCESSES=$(ps aux | awk 'NR>1 && $4 > 30' | wc -l)
echo "Number of processes using > 30% memory: ${HIGH_MEM_PROCESSES}"

DISK_USAGE_PERCENT=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk usage on the / partition: ${DISK_USAGE_PERCENT}"

echo "--------------------------------------------------"