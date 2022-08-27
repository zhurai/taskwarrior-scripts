#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
import includes
import csv

# Information
project="Personal.Birthdays"
tags=["+personal","+birthdays"]
base_title="Birthday: "
priority=3
diffperiod=7

# Other Variables
input_file=file_path+"/birthday.csv"
seperator='|'
rc_dateformat=includes.rc_dateformat
date_format=includes.date_format

def create_date (name,birthday,relationship,note):
    new_title="\""+base_title+name+" ("+birthday+")\"" 

    # dates should be current timezone
    birthday_=includes.date_create(date_format,birthday)
    scheduled_=includes.date_create(date_format,birthday,"-"+diffperiod+" days")
    until_=includes.date_create(date_format,birthday,"+"+diffperiod+" days")
    
    # split relationship items   
    relationship_=relationship.split(",")
    annotation=[]
    for item in relationship_:
        annotation.append("Relationship: "+item)
    annotation.append("Note: "+note)
        
    # run task command
    includes.task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,birthday_,None,annotation,None)
        
#################################################################

with open(input_file) as thecsv:
    thereader=csv.reader(thecsv,delimiter=seperator)
    for row in thereader:
        create_date(row[0],row[1],row[2],row[3])
