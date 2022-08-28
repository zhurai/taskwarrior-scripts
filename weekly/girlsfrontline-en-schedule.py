#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from girlsfrontline_en import *

# Event information
tags.append('+schedule')
priority=-1

def create_task (title,scheduled,until):
    # all the dates should be the source timezone
    scheduled_=date_create(date_format,scheduled,None,offset)
    until_=date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_)

# Weekly Reset
#  scheduled:  	monday 0:00
#  until:		next monday 0:00
thetitle="Reset: Weekly"
scheduled=weekly_reset
until="next "+weekly_reset
create_task(thetitle,scheduled,until)
