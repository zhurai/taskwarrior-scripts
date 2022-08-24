#!/bin/bash

# Date generation
#  start:	   *
#  scheduled:  	4:00
#  due: 	   *sunday 23:59
#  until:	    tomorrow 4:00
scheduleddate="monday 4:00"
duedate="sunday 23:59"
untildate="next monday 4:00"

# Event information
project="Games.CounterSide"
tags="+games +counterside +dailies"
basetitle="CounterSide: Daily Gauntlet Points (900)"
priority=3
offset=-7 # +7 = UTC-7
loop=12 # 900 points/75

# Other Variables
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

if [ -z ${1+x} ];
then
        # if no commandline arguments, then assume we are building for an upcoming week
        scheduleddate=$(date -d "${scheduleddate}" ${dateformat})
        duedate=$(date -d "`date -d "${duedate}"`+7 days" ${dateformat})
        untildate=$(date -d "${untildate}" ${dateformat})
else
        # if any commandline arguments, then assume we are building for this week
        scheduleddate=$(date -d "${scheduleddate}" ${dateformat})
        duedate=$(date -d "${duedate}" ${dateformat})
        untildate=$(date -d "${untildate}" ${dateformat})
fi

for (( i=1 ; i<=$loop; i++ ))
do
	# Build title
	newtitle="\"${basetitle}: Run ${i}/${loop}\"" 
	
	# Add the task and get lastid for the array
	task add project:$project $tags $newtitle scheduled:$scheduleddate due:$duedate until:$untildate rc.dateformat:$rcdateformat priority:$priority
	lastid=$(task +LATEST ids)
	
	d="depends:"
	depends=""

	# loop through the array
	for id in "${idarray}"
	do
		if [ -z "${id}" ];
		then
			# if there is no id, do nothing
			:
		else
			# modify the last task to depend on all previous ones
			d="${d}${id} "
			depends+=$d
			d="depends:"
		fi
	done
	task $lastid modify $depends
	echo $depends
	idarray+=($lastid)
done

# After all of the "series" is added, make the category
task add project:$project $tags $basetitle scheduled:$scheduleddate due:$duedate until:$untildate rc.dateformat:Y-M-DTH:N:S priority:$priority
parentid=$(task +LATEST ids)

d="depends:"
depends=""
# loop through the array
for id in "${idarray}"
do
	if [ -z "${id}" ];
	then
		# if there is no id, do nothing
		:
	else
		# modify the parent task to depend on all child tasks
			d="${d}${id} "
			depends+=$d
			d="depends:"
	fi
done
task $lastid modify $depends
