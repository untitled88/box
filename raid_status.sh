#!/bin/bash
status=$(dmraid -s | grep status | awk '{print $3}')
if [ ${status} != "ok" ]; then
	/sbin/dmraid -s | mail -s "RAID Error on `hostname` : ${status}" me@marcusbean.com
# else
# 	/sbin/dmraid -s | mail -s "RAID Ok on `hostname` : ${status}" me@marcusbean.com
fi

exit 0
