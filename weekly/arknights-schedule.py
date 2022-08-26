#!/bin/python3
import subprocess

# Event information
project="Games.Arknights"
tags=["+games","+arknights","+schedule"]
basetitle="Arknights"
priority=-1
offset=+7 # +7 = UTC-7

# Other Variables
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

def create_date (dateformat,scheduleddate,untildate,thetitle):
    # 1 = $dateformat
    # 2 = $scheduleddate
    # 3 = $untildate
    # 4 = $thetitle
    
    # all the other dates should be the source timezone
    result=subprocess.run(['date','-d',scheduleddate, dateformat], env={'TZ': 'UTC'+str(offset)}, stdout=subprocess.PIPE)
    scheduleddate=result.stdout.decode('utf-8').rstrip()
    result=subprocess.run(['date','-d',untildate, dateformat], env={'TZ': 'UTC'+str(offset)}, stdout=subprocess.PIPE)
    untildate=result.stdout.decode('utf-8').rstrip()
    newtitle="\""+basetitle+thetitle+"\"" 
    
    # execute command
    subprocess.run(['task','add','project:"'+project+'"',*tags,newtitle,'scheduled:"'+scheduleddate+'"','until:"'+untildate+'"','rc.dateformat:"'+rcdateformat+'"','priority:'+str(priority)])

#################################################################

# Weekly Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
thetitle=": Reset: Weekly"
scheduleddate="monday 4:00"
untildate="next monday 4:00"
create_date(dateformat,scheduleddate,untildate,thetitle)

# Annihilation Reset
#  scheduled:  	monday 4:00
#  until:		next monday 4:00
thetitle=": Reset: Weekly Annihilation"
scheduleddate="monday 4:00"
untildate="next monday 4:00"
create_date(dateformat,scheduleddate,untildate,thetitle)

#################################################################

# Arknights Standard Banner
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
thetitle=": Standard Banner Rotation"
newtitle="\""+basetitle+thetitle+"\"" 
# get id of previous Banner
result=subprocess.run(['task','/Arknights/','/Standard/','ids'], stdout=subprocess.PIPE)
stdbannerID=result.stdout.decode('utf-8').rstrip()
if stdbannerID:
    # split into multiple
    bannerArray=stdbannerID.split("-")
    if len(bannerArray) == 1:
        # only 1 exists
        theID=bannerArray[0]
        # check id due date
        result=subprocess.run(['task','_get',theID+'.due'], stdout=subprocess.PIPE)
        thedue=result.stdout.decode('utf-8').rstrip()
        # collect information
        newStart=thedue
        result=subprocess.run(['date','-d',thedue.split("T")[0]+'+ 14 days',dateformat], stdout=subprocess.PIPE)
        newEnd=result.stdout.decode('utf-8').rstrip()
        print(newEnd)
        subprocess.run(['task','add','project:"'+project+'"',*tags,newtitle,'scheduled:"'+newStart+'"','until:"'+newEnd+'"','rc.dateformat:"'+rcdateformat+'"','priority:"'+str(priority)+'"'])
    else:
        # more than one
        # do not do anything
        pass

# Arknights Yellow Cert Exchange (Tokens)
#  Every 2 weeks
#  scheduled:   friday 4:00
#  until:       friday 4:00 (2 weeks from now)
thetitle=": YellowCert Rotation (Tokens)"
newtitle="\""+basetitle+thetitle+"\"" 
# get id of previous Banner
result=subprocess.run(['task','/Arknights/','/Standard/','ids'], stdout=subprocess.PIPE)
stdbannerID=result.stdout.decode('utf-8').rstrip()
if stdbannerID:
    # split into multiple
    bannerArray=stdbannerID.split("-")
    if len(bannerArray) == 1:
        # only 1 exists
        theID=bannerArray[0]
        # check id due date
        result=subprocess.run(['task','_get',theID+'.due'], stdout=subprocess.PIPE)
        thedue=result.stdout.decode('utf-8').rstrip()
        # collect information
        newStart=thedue
        result=subprocess.run(['date','-d',thedue.split("T")[0]+'+ 14 days',dateformat], stdout=subprocess.PIPE)
        newEnd=result.stdout.decode('utf-8').rstrip()
        print(newEnd)
        subprocess.run(['task','add','project:"'+project+'"',*tags,newtitle,'scheduled:"'+newStart+'"','until:"'+newEnd+'"','rc.dateformat:"'+rcdateformat+'"','priority:"'+str(priority)+'"'])
    else:
        # more than one
        # do not do anything
        pass
