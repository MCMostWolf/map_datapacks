#复合实体
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,equipment:{head:{\
id:"minecraft:acacia_boat",components:{"minecraft:item_model":air,"minecraft:enchantments":{"custom:altar/core":1}}}},\
Tags:["loading"]}
summon minecraft:interaction ~ ~ ~ {width:0.9,height:0.9,Tags:["loading","altar.core","altar"],response:1b,data:{"altar":true}}
ride @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] mount @s
ride @n[distance=..0.01,type=minecraft:interaction,tag=loading] mount @s
execute store result score @s uid run scoreboard players add #altar_uid uid 1
#方块渲染
data merge entity @s {transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.8,0.8,0.8],translation:[0,-0.2,0]}}
item replace entity @s contents with minecraft:beacon
#物品渲染
execute summon minecraft:item_display run function custom:altar/render
#
tag @s add altar.core
execute on passengers run tag @s add altar.core_1
tag @s remove loading
execute on passengers run tag @s remove loading