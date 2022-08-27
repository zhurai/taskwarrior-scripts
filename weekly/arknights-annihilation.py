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
schedule="monday 4:00"
due="sunday 23:59"
until="next monday 4:00"

# Event information
project="Games.Arknights"
tags="+games +arknights +weeklies"
base_title="Arknights: Weekly Annihilation"
priority=2
offset=+7 # +7 = UTC-7
loop=5

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

for x in range(1,loop+1):
    # create title
    new_title="\""+base_title+": Run "+x+"/"+str(loop)+"\""	
    
    # create dependency array
    depends_array=[]
    depends="depends:"
    for id in id_array:
        if id == "":
            pass
        else:
            depends_array.append("depends:"+id)

    # Add the task and get lastid for the array
    includes.task_add(rc_dateformat,new_title,project,tags,priority,schedule_,until_,due_,None,None,depends_array)
    lastid=includes.task_get_last()	
    id_array.append(lastid)

# create dependency array
depends_array=[]
depends="depends:"
for id in id_array:
    if id == "":
        pass
else:
    depends_array.append("depends:"+id)
    
# After all of the "series" is added, make the "category"
includes.task_add(rc_dateformat,base_title,project,tags,priority,schedule_,until_,None,None,None,depends_array)
