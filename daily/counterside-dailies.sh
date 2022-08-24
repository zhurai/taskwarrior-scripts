#!/bin/bash

# Event information
project="Games.CounterSide"
tags="+games +counterside +dailies"
basetitle="CounterSide: Daily"
offset=-7 # +7 = UTC-7
priority=3

# need=1: dailies period is not within that period (need to use a 2nd timing within that period to do a very quick claim+sweep)
# need=*: dailies period is 4pm-12am GMT+8 (do not need to do anything)
need=1

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
    
    # start date/due dates should be current timezone
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

# Free Recruitment
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Free Recruitment"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Consortium Check-in
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Consortium: Check-in"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Consortium Donation x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Consortium: Donation (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# WorldMap: Dispatch (Dailies)
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": WorldMap: Dispatch (Dailies)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Shop: Exchange: Today's Deals
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Shop.Exchange.Main: Todays Deals"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Shop: Exchange: Resources: Eternium x5
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Shop.Exchange.Resources: Eternium (x5)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Shop: Exchange: ConvenienceGoods: Anti Air Training Permit 
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Shop.Exchange.Goods: AntiAir Permit"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Attack Training x2+
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.Sim: Attack (x2)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: Defense Training x2+
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.Sim: Defense (x2)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Simulation: AntiAir Training x3+
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.Sim: AntiAir (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: Supply: Daily x5
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.Supply: Daily (x5)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
# Note that this can be with CovertOps (Tuning) or Riot Suppression (APT-Cores)

# Combat: SideStory: Administration Failure Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: AdminFailure Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Orca Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: Orca Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Orca Hard2 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
#thetitle=": Combat.SS: Orca Hard2 (x3)"
#startdate=""
#scheduleddate="4:00"
#duedate="23:59"
#untildate="tomorrow 4:00"
#create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
# (Not Needed Anymore: 110 + 120 Unit Data)

# Combat: SideStory: John Mason Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: JohnMason Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: John Mason Hard2 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: JohnMason Hard2 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Crossroads Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: Crossroads Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: SWAT4 Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: SWAT4 Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: SWAT4 Hard2 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: SWAT4 Hard2 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Sigma Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: Sigma Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Old Fear Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: OldFear Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Delta Seven Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: DeltaSeven Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: Delta Seven Hard2 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: DeltaSeven Hard2 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: End of the Maze Hard1 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: Maze Hard1 (x3)"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Combat: SideStory: End of the Maze Hard2 x3
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": Combat.SS: Maze Hard2 (x3)"
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
thetitle=": Claim Rewards 1"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# HQ: Dorm: Company Dinner
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": HQ.Dorm: Company Dinner"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# HQ: Dorm: Interact: Send
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": HQ.Dorm: Interact: Send"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# HQ: Dorm: Interact: Accept
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": HQ.Dorm: Interact: Accept"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# HQ: Facility: Workshop
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": HQ.Facility: Workshop"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# WorldMap: Dispatch: Dives
#  start:      *
#  scheduled:  	4:00
#  due: 	   *23:59
#  until:		tomorrow 4:00
thetitle=": WorldMap: Dispatch Dives"
startdate=""
scheduleddate="4:00"
duedate="23:59"
untildate="tomorrow 4:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

#################################################################
# These ones may be optional depending on dailies timing (if 4PM-12AM GMT+8 then this section does not need to be done)
# need=1: dailies period is not within that period (need to use a 2nd timing within that period to do a very quick claim+sweep)
# need=*: dailies period is 4pm-12am GMT+8 (do not need to do anything)
if [ need -eq "1" ];
then
    # Claim Rewards 2
    #  start:      *
    #  scheduled:  	4:00
    #  due: 	   *23:59
    #  until:		tomorrow 4:00
    thetitle=": Claim Rewards 2"
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
    thetitle=": Use Eternium 2"
    startdate=""
    scheduleddate="4:00"
    duedate="23:59"
    untildate="tomorrow 4:00"
    create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
fi
