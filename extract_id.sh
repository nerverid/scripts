#!/bin/sh

echo $1

#mask of file. I've got file org-service-date-filid-0.log.gz. msk-of-file="org-service-"
msk_of_fl="org-service-"
msk_end_of_file="-0.log.gz"

#path from we goin to take file
path_log="/var/log/"

thisyear=$(date "+%Y")
current_date=$(date "+%Y%m%d")