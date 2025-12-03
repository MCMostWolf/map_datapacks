#初始化
rotate @s facing entity @p[distance=0..] eyes
#
tag @s add loaded
tag @s remove loading
tag @s add creature._creature
execute store result score @s max_hp run attribute @s minecraft:max_health get 100
execute store result entity @s Health int 0.01 run attribute @s minecraft:max_health get 100
scoreboard players set @s death -1
data merge entity @s {"drop_chances":{"body":0f,"feet":0f,"chest":0f,"head":0f,"legs":0f,"mainhand":0f,"offhand":0f,"saddle":0f},\
"CanPickUpLoot":0b,DeathLootTable:""}
loot replace entity @s armor.body loot core:body/_creature
#数据
data modify storage temp creature_id set from entity @s data.creature_id
function creature:_creature/load with storage temp
#血量
#data modify entity @s Health set from storage minecraft:temp health