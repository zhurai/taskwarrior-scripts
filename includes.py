#!/usr/bin/python3
import subprocess

rc_dateformat="Y-M-DTH:N:S"
date_format="+%Y-%m-%dT%H:%M:%S"

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
        subprocess.run(['task',task_id,'modify','start:"'+start+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)
    
    # add scheduled
    if scheduled:
        subprocess.run(['task',task_id,'modify','scheduled:"'+scheduled+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)
    
    # add due
    if due:
        subprocess.run(['task',task_id,'modify','due:"'+due+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)

    # add until
    if until:
        subprocess.run(['task',task_id,'modify','until:"'+until+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)

    # add annotations (Array)
    if annotations:
        for item in annotations:
            subprocess.run(['task',task_id,'annotate',item],stdout=subprocess.PIPE)
    
    # add dependencies (Array)
    if depends:
        for item in depends:
            subprocess.run(['task',task_id,'modify','depends:"'+item+'"'],stdout=subprocess.PIPE)
    
    # return the task created
    return task_id

def task_get_last():
    result=subprocess.run(['task',"+LATEST",'ids'], stdout=subprocess.PIPE)
    task_id=result.stdout.decode('utf-8').rstrip()
    return task_id

def task_get(task_search):
    result=subprocess.run(['task',*task_search,'ids'], stdout=subprocess.PIPE)
    task_ids=result.stdout.decode('utf-8').rstrip()
    return task_ids

def task_getDOM(task_id,infotoget):
    result=subprocess.run(['task','_get',task_id+"."+infotoget], stdout=subprocess.PIPE)
    response=result.stdout.decode('utf-8').rstrip()
    return response

def task_denotate(task_id,count):
    for x in range(0,count):
        subprocess.run(['task',task_id,"denotate"], stdout=subprocess.PIPE)

def task_modify (rc_dateformat,task_id,task_name=None,projects=None,tags=None,priority=None,scheduled=None,until=None,due=None,start=None,annotations=None,depends=None):
    # modify task_name
    if task_name:
        subprocess.run(['task',task_id,'modify','"'+task_name+'"'],stdout=subprocess.PIPE)
        
    # modify project
    if projects:
        subprocess.run(['task',task_id,'modify','project:"'+projects+'"'],stdout=subprocess.PIPE)
    
    # modify tags
    if tags:
        subprocess.run(['task',task_id,*tags],stdout=subprocess.PIPE)
    
    # modify priority
    if priority:
        subprocess.run(['task',task_id,'priority:"'+str(priority)+'"'],stdout=subprocess.PIPE)
    
    # modify start
    if start:
        subprocess.run(['task',task_id,'modify','start:"'+start+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)
    
    # modify scheduled
    if scheduled:
        subprocess.run(['task',task_id,'modify','scheduled:"'+scheduled+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)
    
    # modify due
    if due:
        subprocess.run(['task',task_id,'modify','due:"'+due+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)

    # modify until
    if until:
        subprocess.run(['task',task_id,'modify','until:"'+until+'"','rc.dateformat:"'+rc_dateformat+'"'],stdout=subprocess.PIPE)

    # modify/readd annotations (Array)
    if annotations:
        for item in annotations:
            subprocess.run(['task',task_id,'annotate',item],stdout=subprocess.PIPE)
    
    # modify/readd dependencies (Array)
    if depends:
        for item in depends:
            subprocess.run(['task',task_id,'modify','depends:"'+item+'"'],stdout=subprocess.PIPE)
    
    # return the task created
    return task_id

if __name__ == "__main__":
   # stuff only to run when not called via 'import' here
   pass
