#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from counterside_sea import *
import re

# Event information
tags.append('+schedule')
priority=-1

def create_task (title,scheduled,until,annotations=None):
    # the dates should be the source timezone
    scheduled_=date_create(date_format,scheduled,None,offset)
    until_=date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    if annotations:
        task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,None,None,annotations,None)
    else:
        task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,None,None,None,None)

# Weekly Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
thetitle="Reset: Weekly"
scheduled=weekly_reset
until="next "+weekly_reset
create_task(thetitle,scheduled,until) 

# Weekly Shop Reset
#  scheduled:  	monday 0:00
#  until:		next monday 0:00
thetitle="Reset: Weekly Shop"
scheduled=weekly_shop_reset
until="next "+weekly_shop_reset
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
create_task(thetitle,scheduled,until,annotations) 

# Subscription Tracking 1
#  Every 18 days
the_title="Monthly Subscription 1 Due"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=task_get(['/CounterSide/','/SEA/','/Monthly Subscription 1 Due/'])
if banner_ids:
    # split into multiple
    banner_array=re.split(r'(?:,| |-)',banner_ids)
    
    if len(banner_array) == 1:
        # only 1 exists
        theID=banner_array[0]
        # check id due date
        thedue=task_getDOM("due")
        # collect information
        new_start=thedue
        new_end=date_create(date_format,thedue.split("T")[0],"+18 days",offset)
        # run task command
        task_add(rc_dateformat,new_title,project,tags,priority,new_start,new_end)
    else:
        # more than one
        # do not do anything
        pass

# Subscription Tracking 2
#  Every 30 days
the_title="Monthly Subscription 2 Due"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=task_get(['/CounterSide/','/SEA/','/Monthly Subscription 2 Due/'])
if banner_ids:
    # split into multiple
    banner_array=re.split(r'(?:,| |-)',banner_ids)
    
    if len(banner_array) == 1:
        # only 1 exists
        theID=banner_array[0]
        # check id due date
        thedue=task_getDOM("due")
        # collect information
        new_start=thedue
        new_end=date_create(date_format,thedue.split("T")[0],"+30 days",offset)
        # run task command
        task_add(rc_dateformat,new_title,project,tags,priority,new_start,new_end)
    else:
        # more than one
        # do not do anything
        pass
