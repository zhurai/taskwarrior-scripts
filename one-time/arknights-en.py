#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from arknights_en import *
import csv

# Event information
tags.append('+onetime')
priority=0

# Other Variables
input_file=file_path+"/arknights-en.csv"
seperator=','
previousid=0

def create_task(type,row):
    if type=="Stages":
        thetitle=base_title+row[0]
        if row[1]=="dependslast":
            depends=[previousid]
            return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,None,depends)
        else:
            return task_add(rc_dateformat,thetitle,project,tags,priority)
    elif type=="Roguelike":
        thetitle=base_title+row[0]
        return task_add(rc_dateformat,thetitle,project,tags,priority)
    elif type=="RedCert Shop":
        thetitle=base_title+row[0]
        if row[1]=="dependslast":
            depends=[previousid]
            return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,None,depends)
        else:
            return task_add(rc_dateformat,thetitle,project,tags,priority)
    elif type=="Module":
        thetitle=base_title+row[0]
        annotations=[]
        for element in row[2:]:
            annotations.append(element)
        if row[1]=="dependslast":
            depends=[previousid]
            return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations,depends)
        else:
            return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations)
    elif type=="Upgrade":
        thetitle=base_title+row[0]
        annotations=[]
        if len(row) == 2:
            if row[1]=="dependslast":
                depends=[previousid]
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,None,depends)
            else:
                return task_add(rc_dateformat,thetitle,project,tags,priority)
        elif len(row) >=3:
            for element in row[2:]:
                annotations.append(element)
            if row[1]=="dependslast":
                depends=[previousid]
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations,depends)
            else:
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations)
    elif type=="Skills":
        thetitle=base_title+row[0]
        annotations=[]
        if len(row) == 2:
            if row[1]=="dependslast":
                depends=[previousid]
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,None,depends)
            else:
                return task_add(rc_dateformat,thetitle,project,tags,priority)
        elif len(row) >=3:
            for element in row[2:]:
                annotations.append(element)
            if row[1]=="dependslast":
                depends=[previousid]
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations,depends)
            else:
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations)
    elif type=="Potentials":
        thetitle=base_title+row[0]
        if row[1]=="dependslast":
            depends=[previousid]
            return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,None,depends)
        else:
            return task_add(rc_dateformat,thetitle,project,tags,priority)
    else:
        return -1

with open(input_file) as thecsv:
    thereader=csv.reader(thecsv,delimiter=seperator)
    for row in thereader:
        previousid=create_task(row[0].split(":")[0],row)
