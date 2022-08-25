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
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"

# Shop: Exchange: Business Card: Fusion Core
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.BusinessCard: Fusion Core (150 cards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 5"
task $lastid annotate "Cost: 30"
task $lastid annotate "Priority: High"

# Shop: Exchange: Business Card: 10 APT Core Coupon
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.BusinessCard: 10 APT Core Coupon (30 cards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 3"
task $lastid annotate "Cost: 10"
task $lastid annotate "Priority: High"

# Shop: Exchange: Business Card: S-APT Core Coupon
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.BusinessCard: S-APT Core Coupon (100 cards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 10"
task $lastid annotate "Cost: 10"
task $lastid annotate "Priority: High"

# Shop: Exchange: Consortium: Set Binary
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.Consortium: Set Binary (4000 Tokens)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 5"
task $lastid annotate "Cost: 800"
task $lastid annotate "Priority: High"

# Shop: Exchange: Consortium: Fusion Core
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.Consortium: Fusion Core (2000 Tokens)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 1"
task $lastid annotate "Cost: 2000"
task $lastid annotate "Priority: High"

# Shop: Exchange: Consortium: S-APT Core Coupon
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.Consortium: S-APT Core Coupon (3000 Tokens)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 3"
task $lastid annotate "Cost: 1000"
task $lastid annotate "Priority: Low"

# Shop: Exchange: ShadowPalace: Tuning Binary
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.ShadowPalace: Tuning Binary (150 shards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 5"
task $lastid annotate "Cost: 30"
task $lastid annotate "Priority: High"

# Shop: Exchange: ShadowPalace: 50% Off T6 Spectral Universal Mold
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.ShadowPalace: 50% Off T6 Spectral Universal Mold (450 shards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 15"
task $lastid annotate "Cost: 30"
task $lastid annotate "Priority: Medium"

# Shop: Exchange: ShadowPalace: 75% Off T6 Spectral Universal Mold
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.ShadowPalace: 75% Off T6 Spectral Universal Mold (225 shards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 15"
task $lastid annotate "Cost: 15"
task $lastid annotate "Priority: High"

# Shop: Exchange: ShadowPalace: Ultraprecise T6 Spectral Universal Mold
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.ShadowPalace: Ultraprecise T6 Spectral Universal Mold (120 shards)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 1"
task $lastid annotate "Cost: 120"
task $lastid annotate "Priority: High"

# Shop: Exchange: Convenience: Discounted Fusion Core 
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.Convenience: Fusion Core (520 quartz)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 2"
task $lastid annotate "Cost: 260 Quartz"
task $lastid annotate "Priority: Medium"

# Shop: Exchange: Convenience: Gear Precision Package
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle=": Shop.Exchange.Convenience: Gear Precision Package (2370 quartz)"
startdate=""
scheduleddate="monday 0:00"
duedate="saturday 23:59"
untildate="next monday 0:00"
create_date "$dateformat" "$startdate" "$scheduleddate" "$duedate" "$untildate" "$thetitle"
previd=$(task +LATEST ids)
task $lastid annotate "Quantity: 3"
task $lastid annotate "Cost: 790 Quartz"
task $lastid annotate "Priority: Low"
