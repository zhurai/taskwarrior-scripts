#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from arknights_en import *

# Date generation
#  start:	   *N/A
#  scheduled:  	monday 4:00
#  due: 	   *sunday 23:59
#  until:		next monday 4:00
scheduled=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset

# Event information
tags.append('+weeklies')
title=base_title+"Weekly Annihilation"
priority=2
loop=5 

# Other Variables
id_array=[]

if sys.argv == 1:
    # no command line arguments, then assume we are building for an upcoming week
    scheduled_=date_create(date_format,scheduled,None,offset)
    due_temp=date_create("+%Y-%m-%d",due)
    due_=date_create(date_format,due_temp,"+7 days")
    until_=date_create(date_format,until,None,offset)
else:
    # if any commandline arguments, then assume we are building for this week
    scheduled_=date_create(date_format,scheduled,None,offset)
    due_=date_create(date_format,due)
    until_=date_create(date_format,until,None,offset)

for interval in range(1,loop+1):
    # create title
    new_title="\""+title+": Run "+str(interval)+"/"+str(loop)+"\""	
    
    # create dependency array
    depends=[]
    for id in id_array:
        if id == "":
            pass
        else:
            depends.append(str(id))
    
    # Add the task and get lastid for the array
    lastid=task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_,None,None,depends)
    id_array.append(str(lastid))

# create dependency array
depends=[]
for id in id_array:
    if id == "":
        pass
else:
    depends.append(str(id))

# After all of the "series" is added, make the "category"
task_add(rc_dateformat,title,project,tags,priority,scheduled_,until_,None,None,None,depends)
