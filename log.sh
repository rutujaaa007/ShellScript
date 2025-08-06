#!/bin/bash

DATE=$(date +%Y-%m-%d)

LOG_FILE="process_log_${DATE}.log"

echo "System Process Report - Generated on: $(date)"

ps aux > "$LOG_FILE"
echo "Running processes $LOG_FILE"