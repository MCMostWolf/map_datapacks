data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b
tag @s add no_ai
tag @s add unmove
tag @s add silent
tag @s add invisible
attribute @s minecraft:scale modifier add minecraft:skill -100000 add_value
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 80 normal
$tp $(x) $(y) $(z)
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 80 normal
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 normal
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 0.8
playsound minecraft:block.ender_chest.close hostile @a ~ ~ ~ 1 1.6
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.8 1.2
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.8 0.7
execute on passengers run data modify entity @s transformation.scale set value [2,2,2]
execute on passengers run data modify entity @s transformation.translation set value [0,-2,-1]