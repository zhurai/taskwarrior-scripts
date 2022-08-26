#!/bin/bash

# Information
project="Personal.Birthdays"
tags="+personal +birthdays"
basetitle="Birthday: "
priority=3

# Other Variables
inputfile="birthday.csv"
IFS=','
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

function create_date () {
    # $1 = $dateformat
    # $2 = $name
    # $3 = $birthday
    # $4 = $relationship
    # $5 = $note
    
    OIFS=$IFS
    IFS=','
    newtitle_="\"${basetitle}${2} ($3)\"" 
    
    #redo
    # should be current timezone
    birthday=$(date -d "${3}" ${1})
    scheduled=$(date -d "${3}-7 days" ${1})
    until=$(date -d "${3}+7 days" ${1})
    
    # execute command
    task add project:$project $tags $newtitle_ start:$startdate_ scheduled:$scheduled due:$birthday until:$until rc.dateformat:$rcdateformat priority:$priority
    lastid=$(task +LATEST ids)
    
    # annotate relationship data
    $relarray=(${4//,/ })
    for rel in $relarray
    do
        task $lastid annotate "Relationship ${rel}"
    done
    
    # annotate note
    task $lastid annotate $5
    
    # revert IFS
    IFS=$OIFS
}

#################################################################

[ ! -f $inputfile ] && { echo "$inputfile file not found"; exit -1; }
while read name date relationship notes
do
	create_date "$dateformat" "$name" "$date" "$relationship" "$note" 
done < $inputfile
IFS=$OLDIFS


