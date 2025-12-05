#数据值
data modify entity @s data.creature_id set value "little_nightmare"
tag @s add little_nightmare
#属性
attribute @s minecraft:max_health base set 25
execute if score #withering gamerule matches 1 run attribute @s minecraft:max_health base set 15
attribute @s minecraft:scale base set 2
attribute @s minecraft:attack_damage base set 10
attribute @s minecraft:flying_speed base set 0.1
effect give @s minecraft:glowing infinite 9 true
effect give @s minecraft:invisibility infinite 9 true
#渲染
function creature:hostial/little_nightmare/render
#武器
item replace entity @s weapon.mainhand with minecraft:netherite_hoe
item replace entity @s weapon.offhand with minecraft:netherite_hoe
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.little_nightmare.name","color":"#17002f","shadow_color":-9043746}]}
team join nightmare
