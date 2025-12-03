
execute unless entity @n[distance=..0,tag=creature.hurt] run tag @s add creature.death
#受伤
$execute if entity @s[tag=hostial] run function creature:hostial/$(creature_id)/event/_hurt
$execute if entity @s[tag=boss] run function creature:boss/$(creature_id)/event/_hurt
#死亡
execute if entity @s[tag=!creature.death] run return fail
$execute if entity @s[tag=hostial] run function creature:hostial/$(creature_id)/event/_death
$execute if entity @s[tag=boss] run function creature:boss/$(creature_id)/event/_death
function core:creature/hurt/loot with storage minecraft:temp

#去除魔咒位
item replace entity @s armor.body with minecraft:air