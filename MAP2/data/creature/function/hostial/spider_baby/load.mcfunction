#数据值
data modify entity @s data.creature_id set value "spider_baby"
#属性
attribute @s minecraft:max_health base set 10
attribute @s minecraft:scale base set 0.55
attribute @s minecraft:attack_damage base set 2
attribute @s minecraft:movement_speed base set 0.27
#effect give @s minecraft:invisibility infinite 255 true
#
#敌对通用
function creature:_creature/hostial/_load