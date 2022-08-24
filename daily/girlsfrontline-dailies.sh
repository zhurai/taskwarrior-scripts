#!/bin/bash

# Event information
project="Games.GirlsFrontline"
tags="+games +girlsfrontline +dailies"
basetitle="GirlsFrontline: Daily"
priority=3
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

# Factory: T-Doll: Claim 
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Factory.Doll: Claim"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Factory: T-Doll: Construct x4 
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Factory.Doll: Construct (x4)"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Factory: Equipment: Claim 
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Factory.Equip: Claim"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Factory: Equipment: Construct x4 
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Factory.Equip: Construct (x4)"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Factory: Enhance then Retire
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": "
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Research: Equipment: Enhancement (x4)
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Research.Equip: Enhance (x4)"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

#  Base: ForwardBasecamp: Claim Rewards
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Base.Forward: Claim Rewards (Loot Rack)"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Base: Protocol Control Center: Capture Operation
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Base.PA: Capture Operation"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Data Attempts
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Combat.Sim: Data Attempts"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Coalition Attempts
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Combat.Sim: Coalition Attempts"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Claim Mail
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Claim Mail"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Claim Rewards
#  start:      *
#  scheduled:  	0:00
#  due: 		23:59
#  until:		tomorrow 4:00
thetitle=": Claim Rewards"
startdate=""
scheduleddate="0:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
