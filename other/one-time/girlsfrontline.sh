#!/bin/bash
# These "one time" scripts are mostly just to quickly import longer term "todo"'s that I need to do
#   They are in a script to save myself time in case I nuke my taskwarrior files
#   But also so I can write them in a script to more easily call when doing my inital import

# Event information
project="Games.GirlsFrontline"
tags="+games +girlsfrontline"
basetitle="GirlsFrontline"
priority=-1

# Other Variables
rcdateformat="Y-M-DTH:N:S"
dateformat="+%Y-%m-%dT%H:%M:%S"

function create_date () {
    # $1 = $thetitle
    # $2 = $previousid
    
    # all the other dates should be the source timezone
    newtitle_="\"${basetitle}${1}\"" 
    
    # execute command
    task add project:$project $tags $newtitle_ priority:$priority depends:$previousid
}

#################################################################

newtitle=": Get.TDoll: 4star SG: MAG-7"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 5star AR: SCR"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 5star SG: FO-12"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 4star HG: Rex Zero 1"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 4star HG: ZIP .22"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 4star SMG: Vigneron M2"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 5star RF: De Lisele"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "T-Doll is in Construction"

newtitle=": Get.TDoll: 3star SMG: FMG-9"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 5star AR: AUG"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star MG: FF M249SAW"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star MG: RPG"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 4star MG: Mk48"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star RF: Super SAAS"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star HG: Type59"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star HG: PSM"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star SMG: MT-9"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star SMG: SCW"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 3star SF: Type81R"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 5star AR: ART556"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 4star AR: Ak5"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 4star SMG: Honey Badger"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 5star SMG: PM-06"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 5star SG: M870"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 4star MG: UKM-2000"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 4star SG: Defender"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 5star AR: VHS"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 5star RF: Model 99"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.TDoll: 4star AR: Fedorov Avtomat"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Get.Fairy: Defense Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Rocket Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Golden Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Cooking Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Fireworks Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Zodiac Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Beach Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Combo Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.Fairy: Auspicious Fairy"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

#################################################################

newtitle=": Get.PA: Intruder"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Ouroboros"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Gager"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Architect"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Judge"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Adeline"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Alina"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)

newtitle=": Get.PA: Intruder (Halloween)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Protocol Assimilation Target is Limited"
task $lastid annotate "Protocol Assimilation Target is Not Released Yet"

newtitle=": Get.PA: Destroyer (Christmas)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Protocol Assimilation Target is Limited"
task $lastid annotate "Protocol Assimilation Target is Not Released Yet"

newtitle=": Get.PA: Hunter (White Day)"
newtitle_="\"${basetitle}${newtitle}\"" 
task add project:$project $tags $newtitle_ priority:$priority
lastid=$(task +LATEST ids)
task $lastid annotate "Protocol Assimilation Target is Limited"
task $lastid annotate "Protocol Assimilation Target is Not Released Yet"

#################################################################

