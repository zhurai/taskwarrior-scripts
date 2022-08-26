#!/bin/python3
import sys
sys.path.insert(0, '..')
import includes
import csv
import os

# Information
project="Personal.Birthdays"
tags=["+personal","+birthdays"]
base_title="Birthday: "
priority=3

# Other Variables
file_path = os.path.realpath(__file__)
input_file=file_path+"/birthday.csv"
seperator='|'
rc_dateformat="Y-M-DTH:N:S"
date_format="+%Y-%m-%dT%H:%M:%S"

def create_date (name,birthday,relationship,note):
    new_title="\""+base_title+name+" ("+birthday+")\"" 

    # dates should be current timezone
    birthday_=includes.date_create(date_format,birthday)
    scheduled_=includes.date_create(date_format,birthday,"-7 days")
    until_=includes.date_create(date_format,birthday,"+7 days")
    
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
