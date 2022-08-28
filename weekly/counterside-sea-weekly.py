#!/usr/bin/python3
import os
file_path = os.path.dirname(os.path.abspath(__file__))
import sys
sys.path.insert(0, file_path+"/..")
from includes import *
from counterside_sea import *

# Event information
tags.append('+weeklies')
base_title=base_title+"Weeklies: "
priority=2

def create_task (title,start,due,scheduled,until,annotations=None,depends=None):
    # start date should be current timezone
    start_=date_create(date_format,start)
    due_=date_create(date_format,due)
    
    # all the other dates should be the source timezone
    scheduled_=date_create(date_format,scheduled,None,offset)
    until_=date_create(date_format,until,None,offset)
    
    # update title
    new_title="\""+base_title+title+"\"" 
    
    # execute command
    task_add(rc_dateformat,new_title,project,tags,priority,scheduled_,until_,due_,start_,annotations,depends)

# Weekly Claim Rewards
#  start:      *
#  scheduled:  	friday 4:00
#  due: 	   *saturday 23:59
#  until:		next monday 4:00
thetitle="Weekly: Claim Rewards"
start=""
scheduled=weekly_reset
due="saturday 23:59"
until="next "+weekly_reset
create_task(thetitle,start,due,scheduled,until,None,None)

# Shop: Exchange: Business Card: Fusion Core
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.BusinessCard: Fusion Core (150 cards)"
start=""
scheduled=weekly_shop_reset
due="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 5",
    "Cost: 30",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Business Card: 10 APT Core Coupon
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.BusinessCard: 10 APT Core Coupon (30 cards)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 3",
    "Cost: 10",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Business Card: S-APT Core Coupon
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.BusinessCard: S-APT Core Coupon (100 cards)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 10",
    "Cost: 10",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Consortium: Set Binary
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.Consortium: Set Binary (4000 Tokens)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 5",
    "Cost: 800",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Consortium: Fusion Core
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.Consortium: Fusion Core (2000 Tokens)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 1",
    "Cost: 2000",
    "Priority: Medium"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Consortium: S-APT Core Coupon
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.Consortium: S-APT Core Coupon (3000 Tokens)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 3",
    "Cost: 1000",
    "Priority: Low"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: ShadowPalace: Tuning Binary
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.ShadowPalace: Tuning Binary (150 shards)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 5",
    "Cost: 30",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: ShadowPalace: 50% Off T6 Spectral Universal Mold
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.ShadowPalace: 50% Off T6 Spectral Universal Mold (450 shards)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 15",
    "Cost: 30",
    "Priority: Medium"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: ShadowPalace: 75% Off T6 Spectral Universal Mold
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.ShadowPalace: 75% Off T6 Spectral Universal Mold (225 shards)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 15",
    "Cost: 15",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: ShadowPalace: Ultraprecise T6 Spectral Universal Mold
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.ShadowPalace: Ultraprecise T6 Spectral Universal Mold (120 shards)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 1",
    "Cost: 120",
    "Priority: High"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Convenience: Discounted Fusion Core 
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.Convenience: Fusion Core (520 quartz)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 2",
    "Cost: 260",
    "Priority: Medium"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: Convenience: Gear Precision Package
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.Convenience: Gear Precision Package (2370 quartz)"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
annotations=["Quantity: 3",
    "Cost: 790",
    "Priority: Low"]
create_task(thetitle,start,due,scheduled,until,annotations)

# Shop: Exchange: PlanetMall: Operators
#  start:      *
#  scheduled:  	monday 0:00
#  due: 	   *saturday 23:59
#  until:		next monday 0:00
thetitle="Shop.Exchange.PlanetMall: Check Operators"
startdate=""
scheduled=weekly_shop_reset
duedate="saturday 23:59"
until="next "+weekly_shop_reset
create_task(thetitle,start,due,scheduled,until)
