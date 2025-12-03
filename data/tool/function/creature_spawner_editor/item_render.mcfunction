tag @s add tool.creature_spawner_editor.selected
execute as @n[type=minecraft:item_display,tag=creature_spawner] run function tool:creature_spawner_editor/item_render_set
tag @s remove tool.creature_spawner_editor.selected
execute as @n[type=minecraft:item_display,tag=creature_spawner] at @s run \
particle minecraft:dust_color_transition{from_color:16711914,scale:4,to_color:9699502} ~ ~ ~ 0.5 0.5 0.5 0.5 40 force
execute as @n[type=minecraft:item_display,tag=creature_spawner] at @s run function effects:screen/talking_text/_spawn \
{"text":'[{"text":"- 刷怪笼核心渲染已替换 -","bold":true,"color":"light_purple"}]',"scale":[0,3,3],"translation":[0,1.3,0],"see_through":1b,"time":40}
playsound minecraft:block.trial_spawner.open_shutter master @a ~ ~ ~ 1 1.2
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 0.4 0.6