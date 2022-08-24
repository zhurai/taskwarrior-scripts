#!/bin/bash

# Event information
project="Games.Arknights"
tags="+games +arknights +schedule"
basetitle="Arknights"
offset=+7 # +7 = UTC-7
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
#  scheduled:  	
#  until:		
thetitle=": Reset: Weekly"
scheduleddate="monday 4:00"
untildate="next monday 4:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"

#  Annihilation Reset
#  scheduled:  	
#  until:		
thetitle=": Reset: Weekly Annihilation"
scheduleddate="4:00"
untildate="tomorrow 4:00"
create_date "$dateformat" "$scheduleddate" "$untildate" "$thetitle"

#################################################################

# Arknights Standard Banner
#   Every 2 weeks
#  scheduled:  	friday 4:00
#  until: 		friday 4:00 (2 weeks from now)
thetitle=": Standard Banner Rotation"
newtitle_="\"${basetitle}${6}\"" 
# get id of previous Banner
stdbannerID=$(task /Arknights/ /Standard/ ids)
# task /Arknights/ /Standard/ ids
if [ -z "${stdbannerID}" ];
then
        # Not Found
        echo "ERROR: Weekly/arknights-schedule.sh: Unable to find a previous Standard Banner Task" >> /home/zhurai/.task-error.log
else
        # Found, do nothing
        # split into multiple
        local stdbannerArray = (${stdbannerID// /})
        if [ ${#stdbannerArray[@]} -eq "1" ]; 
        then
            # only 1 exists
            local stdbannerid=$stdbannerArray[0]
            # check id due date
            local stdbannerdue=$(task _get "${stdbannerid}.due"))
            # collect information
            local newBannerstart = $stdbannerdue
            local newBannerend = $(date -d "${stdbannerdue} + 14 days")
            task add project:$project $tags $newtitle_ scheduled:$newBannerstart until:$newBannerend rc.dateformat:$rcdateformat priority:$priority
        else
            # more than one
            # do not do anything
            :
        fi
fi

# Arknights Yellow Cert Exchange (Tokens)
#   Every 2 weeks
#  scheduled:  	friday 4:00
#  until: 		friday 4:00 (2 weeks from now)
thetitle=": Yellow Cert Rotation (Tokens)"
newtitle_="\"${basetitle}${6}\"" 
# get id of previous Banner
stdbannerID=$(task /Arknights/ /Yellow/ ids)
if [ -z "${stdbannerID}" ];
then
        # Not Found
        echo "ERROR: Weekly/arknights-schedule.sh: Unable to find a previous Yellow Cert Rotation Task" >> /home/zhurai/.task-error.log
else
        # Found, do nothing
        # split into multiple
        local stdbannerArray = (${stdbannerID// /})
        if [ ${#stdbannerArray[@]} -eq "1" ]; 
        then
            # only 1 exists
            local stdbannerid=$stdbannerArray[0]
            # check id due date
            local stdbannerdue=$(task _get "${stdbannerid}.due"))
            # collect information
            local newBannerstart = $stdbannerdue
            local newBannerend = $(date -d "${stdbannerdue} + 14 days")
            task add project:$project $tags $newtitle_ scheduled:$newBannerstart until:$newBannerend rc.dateformat:$rcdateformat priority:$priority
        else
            # more than one
            # do not do anything
            :
        fi
fi

