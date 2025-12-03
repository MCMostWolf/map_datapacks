particle minecraft:end_rod ^ ^ ^ 0 0.3 0 0.1 0 force
particle minecraft:enchant ^ ^ ^ 0.1 0.1 0.1 0 3 force
$execute unless entity @e[distance=..0.4,type=minecraft:item_display,tag=altar.core,scores={uid=$(uid)}] \
facing entity @n[distance=..16,type=minecraft:item_display,tag=altar.core,scores={uid=$(uid)}] feet positioned ^ ^ ^0.2 run return run function custom:altar/base/debug with storage minecraft:temp
$execute unless entity @e[distance=..16,type=minecraft:item_display,tag=altar.core,scores={uid=$(uid)}] run return run tag @s remove bonded
$execute at @s run function effects:screen/talking_text/_spawn \
{"text":'[{"text":"-* Number[$(cnt)] *-","bold":false,"color":"gold"}]',"scale":[0,1.25,1.25],"translation":[0,0.5,0],"time":37,"see_through":1b}