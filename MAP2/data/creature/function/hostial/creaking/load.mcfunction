#数据值
data modify entity @s data.creature_id set value "creaking"
#属性
#attribute @s minecraft:movement_speed base set 0.22
#effect give @s minecraft:invisibility infinite 255 true
#数据
data modify entity @s home_pos set from storage temp Pos
function creature:hostial/creaking/heart with storage minecraft:temp
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.creaking.name","color":"#958e8b","shadow_color":-13094361}]}