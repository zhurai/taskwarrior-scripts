#!/bin/bash

# $1 event name
# $2 start day
# $3 start time
# $4 end day
# $5 end time

# Event information
project="Games.Arknights"
tags="+games +arknights +event"
basetitle="Arknights Event: ${1}"
priority=1
offset=+7 # +7 = UTC-7
export TZ=UTC$offset

# Other Variables
rcdateformat="Y-M-DTH:N:S"
idarray=()
dateformat="+%Y-%m-%dT%H:%M:%S"

# Date generation
#  scheduled:  	start date
#  until:		end date
untildate=$(date -d "${4} ${5}" ${dateformat})
let diff=($(date -d "${4}" +%s-$(date -d "${2}" +%s)))/86400

for (( i=0 ; i<=$diff; i++ ))
do
	# Build title
	newtitle="\"${basetitle} (until ${4})\"" 
    if [ $i -eq "0" ]; 
    then
        scheduleddate=$(date -d "${2} ${3}" ${dateformat}) 
    else
        # more than one
        # do not do anything
        scheduleddate=$(date -d "${2} +${i} days" ${dateformat}) 
    fi
	# Add the task and get lastid for the array
	task add project:$project $tags $newtitle scheduled:$scheduleddate until:$untildate rc.dateformat:$rcdateformat priority:$priority 
	lastid=$(task +LATEST ids)
done
