tag @s add tool.creature_spawner_editor.selected
execute as @n[type=minecraft:item_display,tag=creature_spawner] on passengers run function tool:creature_spawner_editor/block_render_set
tag @s remove tool.creature_spawner_editor.selected
execute as @n[type=minecraft:item_display,tag=creature_spawner] at @s run \
particle minecraft:dust_color_transition{from_color:3583,scale:4,to_color:7298} ~ ~ ~ 0.5 0.5 0.5 0.5 40 force
execute as @n[type=minecraft:item_display,tag=creature_spawner] at @s run function effects:screen/talking_text/_spawn \
{"text":'[{"text":"- 刷怪笼外壳渲染已替换 -","bold":true,"color":"blue"}]',"scale":[0,3,3],"translation":[0,1.3,0],"see_through":1b,"time":40}
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0.8
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 0.7