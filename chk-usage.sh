#!/bin/bash
echo "**************Disk usage******************"
diskusage=$( df -h | awk "{print$5}" | sed -n "5p" | sed 's/%/ /g' )
echo "disk usage is: $diskusage"
echo "***********Ram usage***********************"
ram_usage=$( free -h | sed -n '2p' | awk '{print$4}' ) 
echo "Ram usage is: $ram_usage"
echo "********************largest file in system***********"
large_file=$( find . -type f | xargs du -h | sort -rh | head -4 )
echo "Largest files are: $large_file"
