#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from girlsfrontline_en import *

# Event information
tags.append('+weeklies')
base_title=base_title+"Weeklies"
priority=2

def create_task (title,start,due,scheduled,until,priority=priority):
    # start and due date should be current timezone
    start_=date_create(date_format,start)
    due_=date_create(date_format,due)
    
    # all the dates should be the source timezone
    scheduled_=date_create(date_format,scheduled,None,offset)
    until_=date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_,start_)

# Weekly Claim Rewards
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Claim Weekly Rewards"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
create_task(thetitle,start,due,scheduled,until)

# Factory: T-Doll: Construct Heavy x1 
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Factory.TDoll: Heavy Construct (x1)"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
create_task(thetitle,start,due,scheduled,until)

# Factory: Equipment: Construct Heavy 
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Factory.Equip: Heavy Construct"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
create_task(thetitle,start,due,scheduled,until)

# Combat: Simulation: Coalition: Defense Training Set up
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Combat.Sim: Set up Coalition Defense Training"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
priority_=3
create_task(thetitle,start,due,scheduled,until,priority_)

# Combat: Simulation: Coalition: Adjustment Training Set up
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Combat.Sim: Set up Coalition Adjustment Training"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
priority_=3
create_task(thetitle,start,due,scheduled,until,priority_)

# Combat: Simulation: Coalition: Decoding Training Set up
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *sunday 23:59
#  until:		next monday 0:00
thetitle="Combat.Sim: Set up Coalition Decoding Training"
start=""
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset
priority_=3
create_task(thetitle,start,due,scheduled,until,priority_)
