
#数据值
data modify entity @s data set from storage tool creature_spawner
#核心渲染
function creature:creature_spawner/_template/render/core_load with storage tool creature_spawner
#
execute if entity @s[tag=loaded] run return fail
#方块渲染
summon minecraft:item_display ~ ~ ~ {Tags:["loading","creature_spawner.render"],teleport_duration:1}
ride @n[distance=..0.01,type=minecraft:item_display,tag=loading,tag=creature_spawner.render] mount @s
#
execute on passengers run function creature:creature_spawner/_template/render/load with storage tool creature_spawner
execute on passengers run data merge entity @s {transformation:{scale:[1.001,1.001,1.001],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]}}

tag @s remove loading
tag @s add loaded