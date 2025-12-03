#数据值
data modify entity @s data.creature_id set value "spider_baby"
#属性
data modify entity @s Invulnerable set value 1b
attribute @s minecraft:attack_damage base set 0
attribute @s minecraft:scale base set 0.4
attribute @s minecraft:movement_speed base set 0.15
#
execute store result score @s skill_time run random value 0..25
#ai
execute summon minecraft:fox run function creature:hostial/spider_baby/unattack/ai
#敌对通用
function creature:_creature/hostial/_load