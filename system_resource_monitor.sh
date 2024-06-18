#!/bin/bash

# This script displays CPU, memory, and disk usage information.

# CPU usage
display_cpu_usage() {
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)" | awk '{print "  Usage: " $2 + $4 "%"}'
    echo
}

# Memory usage
display_memory_usage() {
    echo "Memory Usage:"
    free -h | awk '/^Mem:/ {print "  Total: " $2 "\n  Used: " $3 "\n  Free: " $4 "\n  Available: " $7}'
    echo
}

# Disk usage
display_disk_usage() {
    echo "Disk Usage:"
    df -h | awk '$NF=="/"{print "  Total: " $2 "\n  Used: " $3 "\n  Available: " $4 "\n  Usage: " $5}'
    echo
}

# Main function to call other functions
main() {
    echo "System Resource Monitor"
    echo "========================"
    echo

    display_cpu_usage
    display_memory_usage
    display_disk_usage

    echo "========================"
    echo "Resource usage details gathered successfully."
}

# Execute the main function
main
