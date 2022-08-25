#!/bin/bash
# These "one time" scripts are mostly just to quickly import longer term "todo"'s that I need to do
#   They are in a script to save myself time in case I nuke my taskwarrior files
#   But also so I can write them in a script to more easily call when doing my inital import

# Event information
project="Games.Arknights"
tags="+games +arknights"
basetitle="Arknights"
priority=0

# Other Variables
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

function create_date () {
    # $1 = $thetitle
    # $2 = $previousid
    
    # all the other dates should be the source timezone
    newtitle_="\"${basetitle}${1}\"" 
    
    # execute command
    task add project:$project $tags $newtitle_ priority:$priority depends:$previousid
}

#################################################################

newtitle=": Stages: Main Story 2-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 2-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-1 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 3-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-1 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 4-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-1 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 5-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story S5-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story S5-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story S5-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story S5-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H5-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H5-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H5-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H5-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-1 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-11 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-12 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-14 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-15 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 6-16 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H6-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H6-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H6-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H6-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-11 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-12 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-13 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-14 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-15 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-16 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-17 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 7-18 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H7-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H7-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H7-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H7-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-1 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story R8-11 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story M8-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story M8-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story M8-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story JT8-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story JT8-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story Unlock EG-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H8-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H8-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H8-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H8-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story Ch8 Secret Missions"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-2 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-3 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-4 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-5 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-6 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story TR-19"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-7"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-8"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-9"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-10"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-11"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-12"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-13"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-14"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-15"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-16"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-17"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-18"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-19"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story S9-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-7 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-8 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-9 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-10 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-11 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-12 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-13 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-14 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-15 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-16 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-17 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-18 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story 9-19 CM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H9-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H9-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H9-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H9-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid 
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H9-5"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stages: Main Story H9-6"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

#################################################################

newtitle=": RedCert Shop: Honey Berry (3/6) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 

newtitle=": RedCert Shop: Honey Berry (4/6) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Honey Berry (5/6) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Honey Berry (6/6) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Honey Berry (6/6) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Defender Token (1/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Defender Token (2/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Defender Token (3/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Defender Token (4/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Caster Token (1/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Caster Token (2/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Caster Token (3/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": RedCert Shop: Royal Caster Token (4/4) (600 certs)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Module: Lee (Mission 1)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "Kill 80 enemies with Lee"

newtitle=": Module: Lee (Mission 2)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "Main Story 3-1 using Lee and Sniper/Vanguard/Medics only in party"

newtitle=": Module: Lee (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: High"

newtitle=": Module: Wild Mane (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Medium"

newtitle=": Module: Tachanka (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Medium"

newtitle=": Module: Reed (Mission 2)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Main Story 9-5, Deploy Reed, No other VG"

newtitle=": Module: Reed (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Cutter (Mission 1) (1/5)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "5 Battles, Cutter defeats 3 enemy drones per battle"

newtitle=": Module: Cutter (Mission 1) (2/5)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "5 Battles, Cutter defeats 3 enemy drones per battle"

newtitle=": Module: Cutter (Mission 1) (3/5)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "5 Battles, Cutter defeats 3 enemy drones per battle"

newtitle=": Module: Cutter (Mission 1) (4/5)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "5 Battles, Cutter defeats 3 enemy drones per battle"

newtitle=": Module: Cutter (Mission 1) (5/5)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "5 Battles, Cutter defeats 3 enemy drones per battle"

newtitle=": Module: Cutter (Mission 1)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "5 Battles, Cutter defeats 3 enemy drones per battle"

newtitle=": Module: Cutter (Mission 2)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "Main Story 2-7, Cutter must defeat 2 Defender-4 with S2"

newtitle=": Module: Cutter (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Franka (Mission 2)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Main Story 9-3, Franka must defeat 1 Dublinn Heavy Defender"

newtitle=": Module: Franka (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Grani (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Mr Nothing (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Conviction (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Dobermann (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Matoimaru (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Perfumer (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Leizi (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Pudding (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Vigna (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Bibeak (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Flamebringer (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Swire (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Whislash (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

newtitle=": Module: Breeze (Upgrade)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Priority: Low"

#################################################################

newtitle=": Upgrade: Lee Elite 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Upgrade: Kjera Elite 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Upgrade: Blacknight Elite 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Upgrade: Kroos2 Elite 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Upgrade: Kroos2 Elite 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Skills: Gladiia Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Zima Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Zima Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Zima Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: GoldenGlow Skill 3 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: GoldenGlow Skill 3 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: GoldenGlow Skill 3 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: GoldenGlow Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: GoldenGlow Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: GoldenGlow Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Gnosis Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Gnosis Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Gnosis Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: La Pluma Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: La Pluma Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: La Pluma Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: La Pluma Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: La Pluma Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: La Pluma Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Tequila Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Tequila Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Tequila Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Ashlock Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Ashlock Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Ashlock Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Bison Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Bison Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Bison Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Blitz Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Blitz Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Blitz Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Liskarm Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Liskarm Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Liskarm Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Silence Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Silence Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Silence Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Istina Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Istina Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Istina Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Istina Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Istina Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Istina Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Shamare Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Shamare Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Shamare Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Beeswax Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Beeswax Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Beeswax Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Skyfire Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Skyfire Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Skyfire Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Cliffheart Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Cliffheart Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Cliffheart Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Cliffheart Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Cliffheart Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Cliffheart Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Kafka Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Kafka Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Kafka Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Kafka Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Kafka Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Kafka Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Manticore Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Manticore Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Manticore Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: SnowSant Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: SnowSant Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: SnowSant Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: SnowSant Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: SnowSant Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: SnowSant Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Waai Fu Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Waai Fu Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Waai Fu Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Waai Fu Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Waai Fu Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Waai Fu Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Estelle Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Estelle Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Estelle Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Cuora Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Cuora Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Cuora Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Podenco Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Podenco Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Podenco Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Click Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Click Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Click Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Gitano Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Gitano Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Gitano Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Greyy Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Greyy Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Greyy Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Haze Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Haze Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Haze Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Ethan Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Ethan Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Ethan Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Ethan Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Ethan Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Ethan Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Kjera Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Kjera Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Kjera Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Blacknight Skill 2 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Blacknight Skill 2 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Blacknight Skill 2 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Blacknight Skill 1 Mastery 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Skills: Blacknight Skill 1 Mastery 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Skills: Blacknight Skill 1 Mastery 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
