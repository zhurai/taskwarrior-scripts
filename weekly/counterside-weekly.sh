#!/bin/bash

# Event information
project="Games.CounterSide"
tags="+games +counterside +weeklies"
basetitle="CounterSide: Weeklies"
priority=2
offset=-7 # +7 = UTC-7

# Other Variables
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

function create_date () {
    # $1 = $dateformat
    # $2 = $startdate
    # $3 = $scheduleddate
    # $4 = $duedate
    # $5 = $untildate
    # $6 = $thetitle
    
    # start date should be current timezone
    unset TZ
    startdate_=$(date -d "${2}" ${1})
    duedate_=$(date -d "${4}" ${1})
    
    # all the other dates should be the source timezone
    export TZ=UTC$offset
    scheduleddate_=$(date -d "${3}" ${1})
    untildate_=$(date -d "${5}" ${1})
    newtitle_="\"${basetitle}${6}\"" 
    
    # execute command
    task add project:$project $tags $newtitle_ start:$startdate_ scheduled:$scheduleddate_ due:$duedate_ until:$untildate_ rc.dateformat:$rcdateformat priority:$priority
}

#################################################################

# Weekly Claim Rewards
#  start:      *
#  scheduled:  	friday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Claim Weekly Rewards"
startdate=""
scheduleddate="friday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

