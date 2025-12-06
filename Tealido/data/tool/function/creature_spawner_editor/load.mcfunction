#初始
execute unless entity @s[tag=ad.loading] at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","tool.creature_spawner_editor.selected"]}
execute unless entity @s[tag=ad.loading] run playsound minecraft:block.trial_spawner.detect_player master @a ~ ~ ~ 1 1.2
#递归追踪
particle minecraft:dust_color_transition{from_color:16514816,scale:2,to_color:16750848} ~ ~ ~ 0 0 0 0.5 0 force
tag @s add ad.loading
execute anchored feet facing entity @n[type=minecraft:marker,tag=tool.creature_spawner_editor.selected] feet \
positioned ^ ^ ^0.7 unless entity @n[type=minecraft:marker,tag=tool.creature_spawner_editor.selected,distance=..0.9] run \
return run function tool:creature_spawner_editor/load
#位置显示/清除标识
execute at @s run particle minecraft:dust_color_transition{from_color:16514816,scale:4,to_color:16750848} ~ ~ ~ 0.5 0.5 0.5 0.5 40 force
tag @s remove ad.loading
kill @e[type=minecraft:marker,tag=tool.creature_spawner_editor.selected]
#传入数据
data modify entity @s data set from storage tool creature_spawner

execute at @s run function effects:screen/talking_text/_spawn \
{"text":'[{"text":"- 已传入刷怪笼数据 -","bold":true,"color":"gold"}]',"scale":[0,3,3],"translation":[0,1.3,0],"see_through":1b,"time":40}