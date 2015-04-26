#!/bin/bash

#log_file defines the log location
log_file="log_parser.log"

echo "number of HTTP 404 errors in sample log file"
grep "^.*:80" $log_file | awk '($10 ~ /404/)' | awk '{print $10}' | sort | uniq -c

echo "all HTTP response with its respective count "
grep  ^.*:80 $log_file | awk '{print $10}' | sort | uniq -c | sort
