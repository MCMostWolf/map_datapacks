#数据值
data modify entity @s data.creature_id set value "floral_slime"
tag @s add floral_slime
#属性
attribute @s minecraft:max_health base set 13
attribute @s minecraft:scale base set 2
#effect give @s minecraft:invisibility infinite 255 true
#渲染
function creature:hostial/floral_slime/render
#
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.floral_slime.name","color":"#d6ffc6","shadow_color":-12157632}]}
