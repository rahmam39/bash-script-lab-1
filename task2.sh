#!/bin/bash

while true; do

	curr_date=$(date)
	load=$(uptime)
        load1=$(uptime | awk '{print $8}')
	echo "date: $curr_date , uptimee: $load , system_load: $load1"  >> /var/log/systemLoad

	sleep 60

done 
	
