#!/bin/bash
# These "one time" scripts are mostly just to quickly import longer term "todo"'s that I need to do
#   They are in a script to save myself time in case I nuke my taskwarrior files
#   But also so I can write them in a script to more easily call when doing my inital import

# Event information
project="Games.CounterSide"
tags="+games +counterside"
basetitle="CounterSide"
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

newtitle=": Stage: MainStages: Episode 6"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: MainStages: Episode 7"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: MainStages: Episode 8"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Stage: Dive: 47"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: Dive: 48"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Dive: 49"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Dive: 50"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Supply.CovertOps: 1-7"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Steely Ruins 1-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Steely Ruins 1-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Steely Ruins 1-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Steely Ruins 1-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Traces of Resistance 1-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Traces of Resistance 1-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Traces of Resistance 1-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Traces of Resistance 1-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Where Nightmares Prevail 1-2 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenges.Relic: Where Nightmares Prevail 1-3 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Stage: Challenge Mode 4-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-5"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-6"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-7"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 4-8"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-5"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-6"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-7"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: Challenge Mode 5-8"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Stage: FreeContract.Task1: 1-2 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task1: 1-4 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task1: 2-2 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task1: 3-4 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task2: 1-1 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task2: 2-3 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task2: 3-3 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: reeContract.Task3: 1-1 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task3: 1-3 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task3: 1-4 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task3: 2-3 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Task3: 3-1 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 1-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 1-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": FreeContract.Client: 1-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 1-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 2-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 2-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 2-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 2-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 3-1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 3-2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 3-3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Stage: FreeContract.Client: 3-4"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Ship: Albion: 4star (12 Ship Charge)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Ship: Albion: 5star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Albion: 6star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Coffin6: Get"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Coffin6: 2star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Coffin6: 3star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Coffin6: 4star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Coffin6: 5star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

newtitle=": Ship: Coffin6: 6star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Get: HM MLS"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Black Tail"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: ACH-4 Clan"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: ATL-1 Lincoln"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: ATF-35 Thunderbold"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: ATAC-130 Gunship"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Estaque"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Joo Shiyoung"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Rivet"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Brownie Moore"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: (Awakened) Amy Firstwing"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Mika Star"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Lucid"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Shena"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Nest Keeper Xiao"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)
task $lastid annotate "AKA: Tower Xiao"

newtitle=": Get.Rearm: Expert Mercenary Yoo Mina"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Best Mascot Irie Alford"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Hayami Kanade"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Blue Blood Elizabeth Pendragon"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Near Astraea Estarosa"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Purple Mist Laura Beatrix"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Agent Eujin"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: (Awakened) Stormbringer Jake Walker"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Jaina Kropel"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Abyssal Ravage Orca "
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Nicole Primer"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: (Awakened) Singularity Shin Jia"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get: Raphaela Juri the Evil Chaser"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Best Streamer Miya"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

newtitle=": Get.Rearm: Joint Investigation Kang Soyoung"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority 
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Package: New User Package Volume 2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Package: New User Package Volume 3"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "New Detroit"

newtitle=": Package: New User Package Volume 4 (2/3)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T5 Replica Counter Gear Box Skill Haste"

newtitle=": Package: New User Package Volume 4 (3/3)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority depends:$lastid
lastid=$(task +LATEST ids)
task $lastid annotate "T5 Replica Counter Gear Box Skill Haste"
