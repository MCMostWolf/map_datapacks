#复合实体
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,equipment:{head:{\
id:"minecraft:acacia_boat",components:{"minecraft:item_model":air,"minecraft:enchantments":{"custom:altar/base":1}}}},\
Tags:["loading"]}
summon minecraft:interaction ~ ~ ~ {width:0.9,height:0.9,Tags:["loading","altar.base","altar"],response:1b,data:{"altar":true}}
ride @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] mount @s
ride @n[distance=..0.01,type=minecraft:interaction,tag=loading] mount @s
#方块渲染
data merge entity @s {transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.6,0.6,0.6],translation:[0,-0.05,0]}}
item replace entity @s contents with minecraft:lodestone
#物品渲染
execute summon minecraft:item_display run function custom:altar/render
#
tag @s add altar.base
execute on passengers run tag @s add altar.base_1
tag @s remove loading
execute on passengers run tag @s remove loading