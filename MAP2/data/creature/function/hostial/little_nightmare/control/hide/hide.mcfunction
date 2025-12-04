
#
tag @s add invisible
data modify entity @s Silent set value 1b
execute on passengers run item replace entity @s contents with minecraft:air
attribute @s minecraft:scale modifier add minecraft:skill -100000 add_value
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 normal
playsound minecraft:block.ender_chest.close hostile @a ~ ~ ~ 0.3 1.6
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.15 30 normal
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 0.3 0.8
effect clear @s minecraft:glowing