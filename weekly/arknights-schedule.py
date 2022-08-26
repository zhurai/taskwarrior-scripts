#!/bin/python3
import subprocess

# Event information
project="Games.Arknights"
tags=["+games","+arknights","+schedule"]
base_title="Arknights"
priority=-1
offset=+7 # +7 = UTC-7

# Other Variables
rc_dateformat="Y-M-DTH:N:S"
date_format="+%Y-%m-%dT%H:%M:%S"

def create_date (date_format,scheduled,until,the_title):
    # 1 = $dateformat
    # 2 = $scheduleddate
    # 3 = $untildate
    # 4 = $thetitle
    
    # all the other dates should be the source timezone
    result=subprocess.run(['date','-d',scheduled, date_format], env={'TZ': 'UTC'+str(offset)}, stdout=subprocess.PIPE)
    scheduled_=result.stdout.decode('utf-8').rstrip()
    result=subprocess.run(['date','-d',until, date_format], env={'TZ': 'UTC'+str(offset)}, stdout=subprocess.PIPE)
    until_=result.stdout.decode('utf-8').rstrip()
    new_title="\""+base_title+the_title+"\"" 
    
    # execute command
    subprocess.run(['task','add','project:"'+project+'"',*tags,new_title,'scheduled:"'+scheduled_+'"','until:"'+until_+'"','rc.dateformat:"'+rc_dateformat+'"','priority:'+str(priority)])

#################################################################

# Weekly Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
the_title=": Reset: Weekly"
schedule="monday 4:00"
until="next monday 4:00"
create_date(dateformat,schedule,until,the_title)

# Annihilation Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
the_title=": Reset: Weekly Annihilation"
schedule="monday 4:00"
until="next monday 4:00"
create_date(dateformat,schedule,until,the_title)

#################################################################

# Arknights Standard Banner
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
the_title=": Standard Banner Rotation"
new_title="\""+basetitle+the_title+"\"" 
# get id of previous Banner
result=subprocess.run(['task','/Arknights/','/Standard/','ids'], stdout=subprocess.PIPE)
banner_id=result.stdout.decode('utf-8').rstrip()
if banner_id:
    # split into multiple
    banner_array=banner_id.split("-")
    if len(banner_array) == 1:
        # only 1 exists
        theID=banner_array[0]
        # check id due date
        result=subprocess.run(['task','_get',theID+'.due'], stdout=subprocess.PIPE)
        thedue=result.stdout.decode('utf-8').rstrip()
        # collect information
        new_start=thedue
        result=subprocess.run(['date','-d',thedue.split("T")[0]+'+ 14 days',dateformat], stdout=subprocess.PIPE)
        new_end=result.stdout.decode('utf-8').rstrip()
        subprocess.run(['task','add','project:"'+project+'"',*tags,new_title,'scheduled:"'+new_start+'"','until:"'+new_end+'"','rc.dateformat:"'+rc_dateformat+'"','priority:"'+str(priority)+'"'])
    else:
        # more than one
        # do not do anything
        pass

# Arknights Yellow Cert Exchange (Tokens)
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
the_title=": YellowCert Rotation (Tokens)"
new_title="\""+basetitle+the_title+"\"" 
# get id of previous Banner
result=subprocess.run(['task','/Arknights/','/Standard/','ids'], stdout=subprocess.PIPE)
stdbannerID=result.stdout.decode('utf-8').rstrip()
if banner_id:
    # split into multiple
    banner_array=banner_id.split("-")
    if len(banner_array) == 1:
        # only 1 exists
        theID=banner_array[0]
        # check id due date
        result=subprocess.run(['task','_get',theID+'.due'], stdout=subprocess.PIPE)
        thedue=result.stdout.decode('utf-8').rstrip()
        # collect information
        new_start=thedue
        result=subprocess.run(['date','-d',thedue.split("T")[0]+'+ 14 days',dateformat], stdout=subprocess.PIPE)
        new_end=result.stdout.decode('utf-8').rstrip()
        subprocess.run(['task','add','project:"'+project+'"',*tags,new_title,'scheduled:"'+new_start+'"','until:"'+new_end+'"','rc.dateformat:"'+rc_dateformat+'"','priority:"'+str(priority)+'"'])
    else:
        # more than one
        # do not do anything
        pass
