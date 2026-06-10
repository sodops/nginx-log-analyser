#!/bin/bash
echo -e "\e[32mTop 5 IP addresses with the most requests:"
awk '{print $1}' nginx-access.log | uniq -c | sort -nr | head -n 5| awk '{print $2" - "$1 " requests" }'

echo -e "\e[31mTop 5 most requested paths:"
awk '{print $7}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2" - "$1" requests"}'

echo -e "\e[33mTop 5 most response status codes:"
awk '{print $9}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2" - "$1" requests"}'
