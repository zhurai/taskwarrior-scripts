#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from arknights_en import *
import re

# Event information
tags.append('+schedule')
priority=-1

def create_task (title,scheduled,until):
    # all the dates should be the source timezone
    scheduled_=date_create(date_format,scheduled,None,offset)
    until_=date_create(date_format,until,None,offset)
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,None,None,None,None)

# Weekly Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
the_title="Reset: Weekly"
schedule=weekly_reset
until="next "+weekly_reset
create_task(the_title,schedule,until,offset)

# Annihilation Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
the_title="Reset: Weekly Annihilation"
schedule=weekly_reset
until="next "+weekly_reset
create_task(the_title,schedule,until,offset)

# Arknights Standard Banner
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
the_title="Standard Banner Rotation"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=task_get(['/Arknights/','/Standard Banner Rotation/'])
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
        new_end=date_create(date_format,thedue.split("T")[0],"+14 days",offset)
        # run task command
        task_add(rc_dateformat,new_title,project,tags,priority,new_start,new_end)
    else:
        # more than one
        # do not do anything
        pass

# Arknights Yellow Cert Exchange (Tokens)
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
the_title="YellowCert Rotation (Tokens)"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=task_get(['/Arknights/','/YellowCert Rotation/'])
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
        new_end=date_create(date_format,thedue.split("T")[0],"+14 days",offset)
        # run task command
        task_add(rc_dateformat,new_title,project,tags,priority,new_start,new_end)
    else:
        # more than one
        # do not do anything
        pass

# Subscription Tracking
#  Every 30 days
the_title="Monthly Subscription Due"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=task_get(['/Arknights/','/Monthly Subscription Due/'])
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
