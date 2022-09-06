#!/usr/bin/python3
from calendar import FRIDAY, SATURDAY, THURSDAY, WEDNESDAY
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
import csv

# Information
project="Personal: Schedule"
tags=["+personal"]
base_title="Personal: "
priority=3
diffperiod=15 # in minutes
diffperiod=15 # in minutes

# Other Variables
input_file=["/personal.monday.csv","/personal.tuesday.csv","/personal.wednesday.csv","/personal.thursday.csv","/personal.friday.csv"]
seperator=','
previousid=0

def create_date (file,task,time,dependency):
    new_title="\""+base_title+task+" ("+time+")\"" 
    depends=[]
    
    datetime_=file.split(".")[1]+" "+time
    # dates should be current timezone
    due_=date_create(date_format,datetime_)
    scheduled_=date_create(date_format,due_,"-"+str(diffperiod)+" minutes")
    until_=date_create(date_format,due_,"+"+str(diffperiod)+" minutes")
    
    if dependency=="dependslast":
        depends.append[previousid]
        # Previous Listing is 
        return task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_,None,None,depends)
    else:
        # No Other Dependencies
        return task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_)

for item in input_file:
    with open(file_path+item) as thecsv:
        thereader=csv.reader(thecsv,delimiter=seperator)
        for row in thereader:
            previousid=create_date(item,row[0],row[2],row[1])
