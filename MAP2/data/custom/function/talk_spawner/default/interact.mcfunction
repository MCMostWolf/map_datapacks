#Debug清除
execute on target if items entity @s[predicate=condition:player_stats/sneak] weapon.mainhand minecraft:structure_void run tag @n[distance=..0.01,type=minecraft:item_display,tag=item_entity.default] add pre_clear
execute on vehicle if entity @s[tag=pre_clear] run function custom:item_entity/default/clear
#交互
data modify entity @s response set value 0b
execute on target run tag @s add interact_traget
#对话函数
execute on vehicle at @s run function custom:talk_spawner/default/talk with entity @s data
execute on target run tag @s remove interact_traget
#25s重置间隔
schedule function custom:talk_spawner/default/update 500t replace
#对话中防交互
execute if entity @s[tag=talk_spawner.talking] run return fail
execute on vehicle run tag @s add talk_spawner.talking