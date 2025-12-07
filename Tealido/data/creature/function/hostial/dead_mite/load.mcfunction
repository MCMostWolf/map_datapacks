#数据值
data modify entity @s data.creature_id set value "dead_mite"
tag @s add dead_mite
#属性
attribute @s minecraft:max_health base set 14
execute if score #withering gamerule matches 1 run attribute @s minecraft:max_health base set 8
attribute @s minecraft:attack_damage base set 6
attribute @s minecraft:movement_speed base set 0.2
attribute @s minecraft:scale base set 0.8
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.dead_mite.name","color":"#17002f","shadow_color":-9043746}]}
team join nightmare
