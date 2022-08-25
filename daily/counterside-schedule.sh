#!/bin/bash

# Event information
project="Games.CounterSide"
tags="+games +counterside +schedule"
basetitle="CounterSide"
priority=-1
offset=-7 # +7 = UTC-7

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
#  scheduled:  	4:00
#  until:		tomorrow 4:00
thetitle=": Reset: Daily"
scheduleddate="4:00"
untildate="tomorrow 4:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"

#  Evening Login Reward
#  scheduled:  	16:00
#  until:		tomorrow 0:00
thetitle=": Evening Login Reward Period"
scheduleddate="16:00"
untildate="tomorrow 0:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"

#  Daily Shop Reset
#  scheduled:  	0:00
#  until:		tomorrow 4:00
thetitle=": Reset: Daily Shop"
scheduleddate="0:00"
untildate="tomorrow 0:00"
create_date "$dateformat" "$schedule"
lastid=$(task +LATEST ids)
task $lastid annotate "Reset: Shop: Exchange: Today's Deals"
task $lastid annotate "Reset: Shop: Exchange: Resources: Eternium"
task $lastid annotate "Reset: Shop: Exchange: Convenience: Simulation Training Tickets"
