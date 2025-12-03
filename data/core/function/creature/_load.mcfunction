#初始化
tag @s add loaded
execute if entity @s[type=minecraft:player] run function player:_load
execute store result score @s max_hp run attribute @s minecraft:max_health get 100
scoreboard players set @s death -1
data merge entity @s {"drop_chances":{"body":0f,"feet":0f,"chest":0f,"head":0f,"legs":0f,"mainhand":0f,"offhand":0f,"saddle":0f},"CanPickUpLoot":0b}
#怪物id加载
#data modify storage temp creature_id set from entity @s data.creature_id
#execute if entity @s[tag=hostial] run data modify storage temp creature_type set value hostial
#execute if entity @s[tag=neutral] run data modify storage temp creature_type set value neutral