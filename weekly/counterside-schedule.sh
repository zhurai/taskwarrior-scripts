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
lastid=$(task +LATEST ids)
task $lastid annotate "Reset: Store: Exchange: Convenience: Gear Precision Package (3qty, 790quartz) [Low Priority]"
task $lastid annotate "Reset: Store: Exchange: Convenience: Fusion Core (2qty, 260quartz) [Medium Priority]"
task $lastid annotate "Reset: Store: Exchange: Dive: Needed Imaginary Core Items [High Priority]"
task $lastid annotate "Reset: Store: Exchange: ShadowPalace: Ultraprecise T6 Spectral Universal Mold (1qty, 120shards) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: ShadowPalace: 75% Off T6 Spectral Universal Mold (15qty, 15shards) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: ShadowPalace: 50% Off T6 Spectral Universal Mold (15qty, 30shards) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: ShadowPalace: Tuning Binary (30qty, 5shards) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: Consortium: Set Binary (qty,tokens) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: Consortium: Fusion Core (qty,tokens) [Medium Priority]"
task $lastid annotate "Reset: Store: Exchange: Consortium: S-APT Core Coupon (3qty,1000tokens) [Low Priority]"
task $lastid annotate "Reset: Store: Exchange: BusinessCard: 10 APT Cores Coupon (3qty,10cards) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: BusinessCard: S-APT Cores Coupon (10qty,10cards) [High Priority]"
task $lastid annotate "Reset: Store: Exchange: BusinessCard: Fusion Core (5qty,30cards) [High Priority]"
