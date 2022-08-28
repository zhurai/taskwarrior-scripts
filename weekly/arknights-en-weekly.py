#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from arknights_en import *

# Date generation
#  start:	    N/A
#  scheduled:  	monday 4:00
#  due: 	    sunday 23:59
#  until:		next monday 4:00
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset

# Event information
tags.append('+weeklies')
base_title=base_title+"Weeklies: "
priority=2

# Other Variables
idarray=[]

def create_task(title,start,due,until,scheduled):
    
    # date should be current timezone
    start_=date_create(date_format,start)
    due_=date_create(date_format,due)
    
    # all the other dates should be the source timezone
    scheduled_=date_create(date_format,scheduled,None,offset)
    until_=date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_,start_,None,None)

# Weekly Claim Rewards
#  start:      *
#  scheduled:  	friday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Claim Weekly Rewards"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
create_task(thetitle,start,scheduled,due,until)

# Shop: Yellow Cert: 6star (Royal) Tokens
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Shop: YellowCert: Check Royal Tokens"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
create_task(thetitle,start,scheduled,due,until)
