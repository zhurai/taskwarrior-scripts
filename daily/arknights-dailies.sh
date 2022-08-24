#!/bin/bash

# Event information
project="Games.Arknights"
tags="+games +arknights +dailies"
basetitle="Arknights: Daily"
priority=3
offset=+7 # +7 = UTC-7

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

# Infrastructure: Rotate
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Infra: Rotate Infra"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Infrastructure: Rotate Dorms 1
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Infra: Rotate Dorms 1"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Start Mastery Upgrade
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Upgrade Skill Mastery"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Shop: Credit Shop: Claim
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Shop.Credit: Claim"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Shop: Credit Shop: Buy
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Shop.Credit: Buy"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Recruitment Tags
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Tag Recruitment"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Claim Rewards
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Claim Rewards"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Use Stamina 1
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Use Stamina 1"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

#################################################################

# Infrastructure: Rotate Dorms 2
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Infra: Rotate Dorms 2"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Use Stamina 2
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Use Stamina 2"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
