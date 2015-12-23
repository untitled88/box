#!/bin/bash
# Script to execute 'yum update' and email the results
EMAIL_LIST="me@marcusbean.com"
OUT_FILE=/root/scripts/logs/yum_update_checker.out
APP_DIR="/root/scripts"

# Run yum update and do NOT install
dnf update << EOF > ${OUT_FILE}
n
EOF

# Email the output
mail -s "Update checker for $(date)" ${EMAIL_LIST} < ${OUT_FILE}

# Cleanup 
#rm -f ${OUT_FILE}

exit 0
