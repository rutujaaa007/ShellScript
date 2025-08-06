#!/bin/bash

HIGH_LOG="high_mem_processes.log"
high_mem_processes=$(ps aux | awk 'NR>1 && $4 > 30 {OFS="\t"; print $0}')
if [ -n "$high_mem_processes" ]; then
    echo "WARNING: The following processes are using more than 30% of system memory:"
    echo "--------------------------------------------------"

    echo "$high_mem_processes"
    echo "High Memory Usage Report - Generated on: $(date)" >> "$HIGH_LOG"
    echo "$high_mem_processes" >> "$HIGH_LOG"
fi