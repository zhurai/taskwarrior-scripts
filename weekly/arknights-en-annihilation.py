#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
import includes
import arknights_en

# Date generation
#  start:	    N/A
#  scheduled:  	monday 4:00
#  due: 	    sunday 23:59
#  until:		next monday 4:00
schedule=arknights_en.weekly_reset
due="sunday 23:59"
until="next "+arknights_en.weekly_reset

# Event information
project=arknights_en.project
tags=arknights_en.tags+['+weeklies']
base_title=arknights_en.base_title+"Weekly Annihilation"
offset=arknights_en.offset
priority=2
loop=5 

# Other Variables
rc_dateformat=includes.rc_dateformat
date_format=includes.date_format
id_array=[]

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
