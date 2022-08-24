#!/bin/bash

# Event information
project="Games.CounterSide"
tags="+games +counterside +schedule"
basetitle="CounterSide"
offset=-7 # +7 = UTC-7
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

#  Weekly Reset
#  scheduled:  	4:00
#  until:		tomorrow 4:00
thetitle=": Reset: Weekly"
scheduleddate="4:00"
untildate="tomorrow 4:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"

#  Weekly Shop Reset
#  scheduled:  	4:00
#  until:		tomorrow 4:00
thetitle=": Reset: Weekly Shop"
scheduleddate="4:00"
untildate="tomorrow 4:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"
