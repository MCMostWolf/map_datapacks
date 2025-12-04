
#
tag @s remove invisible
data modify entity @s Silent set value 0b
execute on passengers run item replace entity @s contents with minecraft:ender_pearl[minecraft:enchantment_glint_override=1b]
attribute @s minecraft:scale modifier remove minecraft:skill
execute at @s run playsound minecraft:block.ender_chest.open hostile @a ~ ~ ~ 0.3 1.6
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.15 30 normal
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 normal
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 0.3 1.2
effect give @s minecraft:glowing infinite 9 true