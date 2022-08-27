#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
import includes

# Date generation
#  start:		
#  scheduled:  	monday 0:00
#  due: 		sunday 23:59
#  until:		next monday 0:00
schedule="monday"
due="sunday 23:59"
until="next monday"

# Event information
project="Games.CounterSide"
tags=["+games","+counterside","+weeklies"]
base_title="CounterSide: Weekly Shadow Palace"
priority=2
offset=-7 # +7 = UTC-7
loop=7

# Other Variables
rc_dateformat="Y-M-DTH:N:S"
id_array=()
date_format="+%Y-%m-%dT%H:%M:%S"

if sys.argv == 1:
    # no command line arguments, then assume we are building for an upcoming week
    schedule_=includes.date_create(date_format,schedule)
    due_temp=includes.date_create("+%Y-%m-%d",due)
    due_=includes.date_create(date_format,due_temp,"+7 days")
    until_=includes.date_create(date_format,until)
else:
    # if any commandline arguments, then assume we are building for this week
    schedule_=includes.date_create(date_format,schedule)
    due_=includes.date_create(date_format,due)
    until_=includes.date_create(date_format,until)

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
    includes.task_add(rc_dateformat,new_title,project,tags,priority,schedule_,until_,due_,None,None,depends)
    lastid=includes.task_get_last()	
    id_array.append(lastid)

# create dependency array
depends=[]
for id in id_array:
    if id == "":
        pass
else:
    depends.append(str(id))
    
# After all of the "series" is added, make the "category"
includes.task_add(rc_dateformat,base_title,project,tags,priority,schedule_,until_,None,None,None,depends)