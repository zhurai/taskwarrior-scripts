#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from counterside_glb import *

# Date generation
#  start:		
#  scheduled:  	monday 4:00
#  due: 		sunday 23:59
#  until:		next monday 4:00
schedule=weekly_reset
due="sunday 23:59"
until="next "+weekly_reset

# Event information
tags.append('+weeklies')
base_title=base_title+"Weekly Shadow Palace"
priority=2
loop=7

# Other Variables
id_array=[]

if sys.argv == 1:
    # no command line arguments, then assume we are building for an upcoming week
    schedule_=date_create(date_format,schedule)
    due_temp=date_create("+%Y-%m-%d",due)
    due_=date_create(date_format,due_temp,"+7 days")
    until_=date_create(date_format,until)
else:
    # if any commandline arguments, then assume we are building for this week
    schedule_=date_create(date_format,schedule)
    due_=date_create(date_format,due)
    until_=date_create(date_format,until)

for interval in range(1,loop+1):
    # create title
    new_title="\""+base_title+": Run "+str(interval)+"/"+str(loop)+"\""	
    
    # create dependency array
    depends=[]
    for id in id_array:
        if id == "":
            pass
        else:
            depends.append(str(id))
    
    # Add the task and get lastid for the array
    task_add(rc_dateformat,new_title,project,tags,priority,schedule_,until_,due_,None,None,depends)
    lastid=task_get_last()	
    id_array.append(lastid)

# create dependency array
depends=[]
for id in id_array:
    if id == "":
        pass
else:
    depends.append(str(id))
    
# After all of the "series" is added, make the "category"
task_add(rc_dateformat,base_title,project,tags,priority,schedule_,until_,None,None,None,depends)
