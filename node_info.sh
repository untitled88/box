#!/bin/bash
# Script to gather info
# Designed to be run locally

echo 'Hostname: '$(hostname)
echo 'Kernel: '$(uname -r)
echo 'Memory Info: '
free -m

exit 0 
