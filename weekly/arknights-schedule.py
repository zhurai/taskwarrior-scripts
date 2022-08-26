#!/bin/python3
import sys
sys.path.insert(0, '..')
import includes

# Event information
project="Games.Arknights"
tags=["+games","+arknights","+schedule"]
base_title="Arknights"
priority=-1
offset=+7 # +7 = UTC-7

# Other Variables
rc_dateformat="Y-M-DTH:N:S"
date_format="+%Y-%m-%dT%H:%M:%S"

def create_date (title,scheduled,until):
    # all the dates should be the source timezone
    scheduled_=includes.date_create(date_format,scheduled,None,offset)
    until_=includes.date_create(date_format,until,None,offset)
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    includes.task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,None,None,None,None)

#################################################################

# Weekly Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
the_title=": Reset: Weekly"
schedule="monday 4:00"
until="next monday 4:00"
create_date(the_title,schedule,until)

# Annihilation Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
the_title=": Reset: Weekly Annihilation"
schedule="monday 4:00"
until="next monday 4:00"
create_date(the_title,schedule,until)

#################################################################

# Arknights Standard Banner
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
the_title=": Standard Banner Rotation"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=includes.task_get(['/Arknights/','/Standard Banner Rotation/'])
if banner_ids:
    # split into multiple
    banner_array=banner_ids.split("-").split(" ")
    if len(banner_array) == 1:
        # only 1 exists
        theID=banner_array[0]
        # check id due date
        thedue=includes.task_getDOM("due")
        # collect information
        new_start=thedue
        new_end=includes.date_create(date_format,thedue.split("T")[0],"+14 days")
        # run task command
        includes.task_add(rc_dateformat,new_title,project,tags,priority,new_start,new_end)
    else:
        # more than one
        # do not do anything
        pass

# Arknights Yellow Cert Exchange (Tokens)
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
the_title=": YellowCert Rotation (Tokens)"
new_title="\""+base_title+the_title+"\"" 
# get id of previous Banner
banner_ids=includes.task_get(['/Arknights/','/YellowCert Rotation/'])
if banner_ids:
    # split into multiple
    banner_array=banner_ids.split("-").split(" ")
    if len(banner_array) == 1:
        # only 1 exists
        theID=banner_array[0]
        # check id due date
        thedue=includes.task_getDOM("due")
        # collect information
        new_start=thedue
        new_end=includes.date_create(date_format,thedue.split("T")[0],"+14 days")
        # run task command
        includes.task_add(rc_dateformat,new_title,project,tags,priority,new_start,new_end)
    else:
        # more than one
        # do not do anything
        pass
    