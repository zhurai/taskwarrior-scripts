#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from arknights_en import *
import csv
import re

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
        # excape the /'s in the title
        thetitle_=thetitle.replace("/","\/")
        search=re.split(r'(?:,| |-)',task_get(["/"+thetitle_+"/"]))
        # only one task should return, always use the first one
        if search[0]:
            # task exists
            uuid=task_getDOM(search,"uuid")
            # get available annotations
            available_annotations=task_getDOM(search,"annotations.count")
            if available_annotations > 0:
                # if there are current annotations
                task_denotate(search,available_annotations)
                # readd annotations
                for element in row[2:]:
                    annotations.append(element)
                task_modify(rc_dateformat,search[0],None,None,None,None,None,None,None,None,annotations,None)
            if row[1]=="dependslast":
                depends=[previousid]
                task_modify(rc_dateformat,search[0],None,None,None,None,None,None,None,None,None,depends)
            return search[0]
        else: 
            if row[1]=="dependslast":
                depends=[previousid]
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations,depends)
            else:
                return task_add(rc_dateformat,thetitle,project,tags,priority,None,None,None,None,annotations)
    elif type=="Upgrade":
        thetitle=base_title+row[0]
        annotations=[]
        # excape the /'s in the title
        thetitle_=thetitle.replace("/","\/")
        search=re.split(r'(?:,| |-)',task_get(["/"+thetitle_+"/"]))
        # only one task should return, always use the first one
        if search[0]:
            # task exists
            uuid=task_getDOM(search,"uuid")
            # get available annotations
            available_annotations=task_getDOM(search,"annotations.count")
            if available_annotations > 0:
                # if there are current annotations
                task_denotate(search,available_annotations)
                # readd annotations
                for element in row[2:]:
                    annotations.append(element)
                task_modify(rc_dateformat,search[0],None,None,None,None,None,None,None,None,annotations,None)
            if row[1]=="dependslast":
                depends=[previousid]
                task_modify(rc_dateformat,search[0],None,None,None,None,None,None,None,None,None,depends)
            return search[0]
        else: 
            # task does not exist
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
        # excape the /'s in the title
        thetitle_=thetitle.replace("/","\/")
        search=re.split(r'(?:,| |-)',task_get(["/"+thetitle_+"/"]))
        # only one task should return, always use the first one
        if search[0]:
            # task exists
            uuid=task_getDOM(search,"uuid")
            # get available annotations
            available_annotations=task_getDOM(search,"annotations.count")
            if available_annotations > 0:
                # if there are current annotations
                task_denotate(search,available_annotations)
                # readd annotations
                for element in row[2:]:
                    annotations.append(element)
                task_modify(rc_dateformat,search[0],None,None,None,None,None,None,None,None,annotations,None)
            if row[1]=="dependslast":
                depends=[previousid]
                task_modify(rc_dateformat,search[0],None,None,None,None,None,None,None,None,None,depends)
            return search[0]
        else: 
            # task does not exist
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
