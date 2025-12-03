#初始
execute unless entity @s[tag=ad.loading] at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","tool.creature_spawner_editor.selected"]}
execute unless entity @s[tag=ad.loading] run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1 1.5
#递归追踪
particle minecraft:dust_color_transition{from_color:65527,scale:2,to_color:65454} ~ ~ ~ 0 0 0 0.5 0 force
tag @s add ad.loading
execute anchored feet facing entity @n[type=minecraft:marker,tag=tool.creature_spawner_editor.selected] feet \
positioned ^ ^ ^0.7 unless entity @n[type=minecraft:marker,tag=tool.creature_spawner_editor.selected,distance=..0.9] run \
return run function tool:creature_spawner_editor/dialog/load
#位置显示/清除标识
execute at @s run particle minecraft:dust_color_transition{from_color:65527,scale:4,to_color:65454} ~ ~ ~ 0.5 0.5 0.5 0.5 40 force
tag @s remove ad.loading
kill @e[type=minecraft:marker,tag=tool.creature_spawner_editor.selected]
#载入数据
data modify storage tool creature_spawner set from entity @s data

execute at @s run function effects:screen/talking_text/_spawn \
{"text":'[{"text":"- 已锁定刷怪笼数据 -","bold":true,"color":"aqua"}]',"scale":[0,3,3],"translation":[0,1.3,0],"see_through":1b,"time":40}