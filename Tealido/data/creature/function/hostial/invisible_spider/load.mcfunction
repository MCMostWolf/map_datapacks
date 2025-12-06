#数据值
data modify entity @s data.creature_id set value "invisible_spider"
tag @s add invisible_spider
#属性
attribute @s minecraft:max_health base set 24
attribute @s minecraft:attack_damage base set 10
attribute @s minecraft:scale base set 1.5
effect give @s minecraft:invisibility infinite 9 true
#敌对通用
function creature:_creature/hostial/_load
#名称
data merge entity @s {CustomNameVisible:0b,CustomName:[{\
"translate":"creature.hostial.invisible_spider.name","color":"#17002f","shadow_color":-9043746}]}

team join nightmare