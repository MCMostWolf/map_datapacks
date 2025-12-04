#数据值
data modify entity @s data.creature_id set value "horror_creeper"
tag @s add horror_creeper
#属性
attribute @s minecraft:max_health base set 15
attribute @s minecraft:movement_speed base set 0.2
effect give @s minecraft:invisibility 1 9 true
#爆炸记录
summon minecraft:item ~ ~ ~ {Item:{id:"acacia_boat",components:{"minecraft:item_model":"minecraft:air"}},\
Tags:["loading","creature.bond.passengers","horror_creeper"],Invulnerable:1b,PickupDelay:-1,Age:-32768}
ride @n[type=minecraft:item,tag=loading] mount @s
execute on passengers run tag @s remove loading
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.horror_creeper.name","color":"#17002f","shadow_color":-9043746}]}
team join nightmare