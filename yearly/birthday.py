#!/bin/python3
import subprocess
import csv
import os

# Information
project="Personal.Birthdays"
tags=["+personal","+birthdays"]
base_title="Birthday: "
priority=3

# Other Variables
input_file="birthday.csv"
seperator='|'
rc_dateformat="Y-M-DTH:N:S"
date_format="+%Y-%m-%dT%H:%M:%S"
file_path = os.path.realpath(__file__)

def create_date (date_format,name,birthday,relationship,note):
    # $1 = $dateformat
    # $2 = $name
    # $3 = $birthday
    # $4 = $relationship
    # $5 = $note
    newtitle="\""+base_title+name+" ("+birthday+")\"" 
    
    # should be current timezone
    result=subprocess.run(['date','-d',birthday,date_format], stdout=subprocess.PIPE)
    birthday=result.stdout.decode('utf-8').rstrip()
    
    result=subprocess.run(['date','-d',birthday+"-7 days",date_format], stdout=subprocess.PIPE)
    scheduled=result.stdout.decode('utf-8').rstrip()

    result=subprocess.run(['date','-d',birthday+"+7 days",date_format], stdout=subprocess.PIPE)
    until=result.stdout.decode('utf-8').rstrip()
    
    # execute command
    subprocess.run(['task','add','project:"'+project+'"',*tags,newtitle,'scheduled:"'+scheduled+'"','until:"'+until+'"','due:"'+birthday+'"','rc.dateformat:"'+rcdateformat+'"','priority:"'+str(priority)+'"'])
    result=subprocess.run(['task','+LATEST','ids'], stdout=subprocess.PIPE)
    lastid=result.stdout.decode('utf-8').rstrip()
    
    # annotate relationship data
    relarray=relationship.split(",")
    
    for rel in relarray:
        subprocess.run(['task',lastid,'annotate','Relationship: '+rel])
    
    # annotate note
    subprocess.run(['task',lastid,'annotate','Note: '+note])
        
#################################################################

with open(inputfile) as thecsv:
    thereader=csv.reader(thecsv,delimiter=seperator)
    for row in thereader:
        create_date(dateformat,row[0],row[1],row[2],row[3])
