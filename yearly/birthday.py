#!/bin/python3
import subprocess
import csv

# Information
project="Personal.Birthdays"
tags="+personal +birthdays"
tags=["+personal","+birthdays"]
basetitle="Birthday: "
priority=3

# Other Variables
inputfile="birthday.csv"
SEP='|'
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

def create_date (dateformat,name,birthday,relationship,note):
    # $1 = $dateformat
    # $2 = $name
    # $3 = $birthday
    # $4 = $relationship
    # $5 = $note
    newtitle="\""+basetitle+name+" ("+birthday+")\"" 
    
    # should be current timezone
    result=subprocess.run(['date','-d',birthday,dateformat], stdout=subprocess.PIPE)
    birthday=result.stdout.decode('utf-8').rstrip()
    
    result=subprocess.run(['date','-d',birthday+"-7 days",dateformat], stdout=subprocess.PIPE)
    scheduled=result.stdout.decode('utf-8').rstrip()

    result=subprocess.run(['date','-d',birthday+"+7 days",dateformat], stdout=subprocess.PIPE)
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
    thereader=csv.reader(thecsv,delimiter="|")
    for row in thereader:
        create_date(dateformat,row[0],row[1],row[2],row[3])
