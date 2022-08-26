#!/bin/python3
import subprocess

def date_create (date_format,day,adjustments=None,offset=None):
    if adjustments and offset:
        result=subprocess.run(['date','-d',day+adjustments,date_format],env={'TZ': 'UTC'+str(offset)},stdout=subprocess.PIPE)
    elif adjustments and not offset:
        result=subprocess.run(['date','-d',day+adjustments,date_format],stdout=subprocess.PIPE)
    elif offset and not adjustments:
        result=subprocess.run(['date','-d',day,date_format],env={'TZ': 'UTC'+str(offset)},stdout=subprocess.PIPE)
    else:
        result=subprocess.run(['date','-d',day,date_format],stdout=subprocess.PIPE)
    thedate=result.stdout.decode('utf-8').rstrip()
    return thedate

def task_add (rc_dateformat,task_name,projects,tags,priority=0,scheduled=None,until=None,due=None,start=None,annotations=None,depends=None):
    # run task command
    subprocess.run(['task','add','project:"'+projects+'"',*tags,task_name,'priority:"'+str(priority)+'"','rc.dateformat:"'+rc_dateformat+'"'])
    
    # get last id (for more actions)
    result=subprocess.run(['task','+LATEST','ids'],stdout=subprocess.PIPE)
    task_id=result.stdout.decode('utf-8').rstrip()
    
    # add start
    if start:
        subprocess.run(['task',task_id,'modify','start:"'+start+'"'],stdout=subprocess.PIPE)
    
    # add scheduled
    if scheduled:
        subprocess.run(['task',task_id,'modify','scheduled:"'+scheduled+'"'],stdout=subprocess.PIPE)
    
    # add due
    if due:
        subprocess.run(['task',task_id,'modify','due:"'+due+'"'],stdout=subprocess.PIPE)

    # add until
    if until:
        subprocess.run(['task',task_id,'modify','until:"'+until+'"'],stdout=subprocess.PIPE)

    # add annotations (Array)
    if annotations:
        for item in annotations:
            subprocess.run(['task',task_id,'annotate',item],stdout=subprocess.PIPE)
    
    # add dependencies (Array)
    if depends:
        for item in depends:
            subprocess.run(['task',task_id,'modify','depends:"'+item+'"'],stdout=subprocess.PIPE)

def task_get(task_search):
    result=subprocess.run(['task',*task_search,'ids'], stdout=subprocess.PIPE)
    task_ids=result.stdout.decode('utf-8').rstrip()
    return task_ids

if __name__ == "__main__":
   # stuff only to run when not called via 'import' here
   pass
