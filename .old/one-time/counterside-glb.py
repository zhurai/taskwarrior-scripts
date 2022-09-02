#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from counterside_glb import *
import csv

# Event information
tags.append('+onetime')
priority=0

# Other Variables
input_file=file_path+"/counterside-glb.csv"
seperator=','
previousid=0

def create_task(type,row):
    return -1

with open(input_file) as thecsv:
    thereader=csv.reader(thecsv,delimiter=seperator)
    for row in thereader:
        previousid=create_task(row[0].split(":")[0],row)
