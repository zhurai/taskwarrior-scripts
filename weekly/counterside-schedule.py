#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
import includes

# Event information
project="Games.CounterSide"
tags=["+games","+counterside","+schedule"]
base_title="CounterSide"
priority=-1
offset=-7 # +7 = UTC-7

# Other Variables
rc_dateformat="Y-M-DTH:N:S"
date_format="+%Y-%m-%dT%H:%M:%S"

def create_date (title,scheduled,until,annotations):
    # the dates should be the source timezone
    scheduled_=includes.date_create(date_format,scheduled,None,offset)
    until_=includes.date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    if annotations:
        includes.task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,None,None,annotations,None)
    else:
        includes.task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,None,None,None,None)

#################################################################

# Weekly Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
thetitle=": Reset: Weekly"
scheduled="monday 4:00"
until="next monday 4:00"
create_date(thetitle,scheduled,until) 

# Weekly Shop Reset
#  scheduled:  	monday 0:00
#  until:		next monday 0:00
thetitle=": Reset: Weekly Shop"
scheduled="monday 0:00"
until="next monday 4:00"
annotations=["Reset: Store: Exchange: Convenience: Gear Precision Package (3qty, 790quartz) [Low Priority]",
    "Reset: Store: Exchange: Convenience: Fusion Core (2qty, 260quartz) [Medium Priority]",
    "Reset: Store: Exchange: Dive: Needed Imaginary Core Items [High Priority]",
    "Reset: Store: Exchange: ShadowPalace: Ultraprecise T6 Spectral Universal Mold (1qty, 120shards) [High Priority]",
    "Reset: Store: Exchange: ShadowPalace: 75% Off T6 Spectral Universal Mold (15qty, 15shards) [High Priority]",
    "Reset: Store: Exchange: ShadowPalace: 50% Off T6 Spectral Universal Mold (15qty, 30shards) [High Priority]",
    "Reset: Store: Exchange: ShadowPalace: Tuning Binary (30qty, 5shards) [High Priority]",
    "Reset: Store: Exchange: Consortium: Set Binary (5qty,800tokens) [High Priority]",
    "Reset: Store: Exchange: Consortium: Fusion Core (1qty,2000tokens) [Medium Priority]",
    "Reset: Store: Exchange: Consortium: S-APT Core Coupon (3qty,1000tokens) [Low Priority]",
    "Reset: Store: Exchange: BusinessCard: 10 APT Cores Coupon (3qty,10cards) [High Priority]",
    "Reset: Store: Exchange: BusinessCard: S-APT Cores Coupon (10qty,10cards) [High Priority]",
    "Reset: Store: Exchange: BusinessCard: Fusion Core (5qty,30cards) [High Priority]"]
create_date(thetitle,scheduled,until,annotations) 



