#!/bin/bash

# Event information
project="Games.GirlsFrontline"
tags="+games +girlsfrontline +schedule"
basetitle="GirlsFrontline"
offset=-8 # +8 = UTC-8
priority=-1

# Other Variables
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

function create_date () {
    # $1 = $dateformat
    # $2 = $scheduleddate
    # $3 = $untildate
    # $4 = $thetitle
    
    # all the other dates should be the source timezone
    export TZ=UTC$offset
    scheduleddate_=$(date -d "${2}" ${1})
    untildate_=$(date -d "${3}" ${1})
    newtitle_="\"${basetitle}${4}\"" 
    
    # execute command
    task add project:$project $tags $newtitle_ scheduled:$scheduleddate_ until:$untildate_ rc.dateformat:$rcdateformat priority:$priority
}

#################################################################

#  Daily Reset
#  scheduled:  	0:00
#  until:		tomorrow 0:00
thetitle=": Reset: Daily"
scheduleddate="0:00"
untildate="tomorrow 0:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"
