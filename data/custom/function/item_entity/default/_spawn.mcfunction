tag @s add user
#execute unless data storage minecraft:tool item_entity run 
data modify storage minecraft:tool item_entity set value {"width":0.7,"height":0.5,"cnt":3,"scale":0.5,"left_rotation":[0,-0.707,0,0.707]}
summon minecraft:item_display ~ ~ ~ {Tags:["loading"]}
execute as @n[type=minecraft:item_display,tag=loading] run function custom:item_entity/default/load with storage minecraft:tool item_entity
tag @s remove user