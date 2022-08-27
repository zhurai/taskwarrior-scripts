#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
import includes

# Date generation
#  start:	    N/A
#  scheduled:  	monday 4:00
#  due: 	    sunday 23:59
#  until:		next monday 4:00
scheduled="monday 4:00"
due="sunday 23:59"
until="next monday 4:00"

# Event information
project="Games.Arknights"
tags=["+games","+arknights","+weeklies"]
base_title="Arknights: Weeklies:"
priority=2
offset=+7 # +7 = UTC-7

# Other Variables
rc_dateformat="Y-M-DTH:N:S"
idarray=[]
date_format="+%Y-%m-%dT%H:%M:%S"

def create_date(title,start,due,until,scheduled):
    
    # date should be current timezone
    start_=includes.date_create(date_format,start)
    due_=includes.date_create(date_format,due)
    
    # all the other dates should be the source timezone
    scheduled_=includes.date_create(date_format,scheduled,None,offset)
    until_=includes.date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    includes.task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_,start_,None,None)

#################################################################

# Weekly Claim Rewards
#  start:      *
#  scheduled:  	friday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Claim Weekly Rewards"
start=""
scheduled="friday 0:00"
due="sunday 23:59"
until="next monday 0:00"
create_date(thetitle,start,scheduled,due,until)

# Shop: Yellow Cert: 6star (Royal) Tokens
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle=": Shop: YellowCert: Check Royal Tokens"
start=""
scheduled="monday 0:00"
due="sunday 23:59"
until="next monday 0:00"
create_date(thetitle,start,scheduled,due,until)
