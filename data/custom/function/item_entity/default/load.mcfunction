#生成
$summon minecraft:interaction ~ ~ ~ {Tags:["loading"],response:1b,width:$(width),height:$(height)}
summon minecraft:armor_stand ~ ~ ~ {Tags:["loading"],Invisible:1b,Marker:1b}

#Uid
execute store result score @s uid run scoreboard players add #uid_2 uid 1
#骑乘
execute as @e[distance=..0.01,type=!minecraft:item_display,tag=loading] run \
ride @s mount @n[distance=..0.01,type=minecraft:item_display,tag=loading]
execute on passengers if entity @s[type=minecraft:armor_stand] run item replace entity @s armor.head with \
minecraft:acacia_boat[minecraft:item_model="minecraft:air",minecraft:enchantments={"custom:item_entity/default":1}]
#物品渲染
item replace entity @s contents from entity @p[tag=user] weapon.mainhand
$data modify entity @s transformation.scale set value [$(scale),$(scale),$(scale)]
$data modify entity @s transformation.left_rotation set value $(left_rotation)
data modify entity @s transformation.translation set value [0,0.4,0]
execute store result score #cnt temp run data get storage minecraft:tool item_entity.cnt
execute at @s run function custom:item_entity/default/cnt_spawn
#标签
tag @s remove loading
execute on passengers run tag @s remove loading