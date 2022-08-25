#!/bin/bash

# Event information
project="Games.GirlsFrontline"
tags="+games +girlsfrontline +weeklies"
basetitle="GirlsFrontline: Weeklies"
priority=2
offset=+8 # +8 = UTC-8

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

# Factory: T-Doll: Construct Heavy x1 
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Factory.TDoll: Heavy Construct (x1)"
startdate=""
scheduleddate="monday 0:00"
duedate="sunday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Factory: Equipment: Construct Heavy 
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Factory.Equip: Heavy Construct"
startdate=""
scheduleddate="monday 0:00"
duedate="sunday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Coalition: Defense Training Set up
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Combat.Sim: Coalition Defense Training"
startdate=""
scheduleddate="monday 0:00"
duedate="sunday 23:59"
untildate="next monday 0:00"
priority=3
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Coalition: Adjustment Training Set up
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Combat.Sim: Coalition Adjustment Training"
startdate=""
scheduleddate="monday 0:00"
duedate="sunday 23:59"
untildate="next monday 0:00"
priority=3
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Coalition: Decoding Training Set up
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Combat.Sim: Coalition Decoding Training"
startdate=""
scheduleddate="monday 0:00"
duedate="sunday 23:59"
untildate="next monday 0:00"
priority=3
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Revert priority back
priority=2