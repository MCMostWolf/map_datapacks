
data modify entity @s NoAI set value 1b
tag @s add no_ai
tag @s add unmove
tag @s add silent
tag @s add invisible
attribute @s minecraft:scale modifier add minecraft:skill -100000 add_value
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 80 normal
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 normal
playsound minecraft:block.ender_chest.close hostile @a ~ ~ ~ 1 1.6
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 80 normal
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 0.8
execute on passengers run data modify entity @s transformation.scale set value [0,0,0]
$tp $(x) $(y) $(z)
execute at @s run tp ~ ~-100 ~
playsound minecraft:event.mob_effect.trial_omen hostile @a ~ ~ ~ 0.5 1.5
execute positioned ~ ~0.5 ~ run function effects:particle/circle/squid_ink/normal_out_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/squid_ink/mini_out_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/squid_ink/mini_in
execute positioned ~ ~ ~ run function effects:particle/circle/squid_ink/mini_in
function creature:hostial/little_nightmare/_spawn
function creature:hostial/little_nightmare/_spawn
function creature:hostial/little_nightmare/_spawn
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1.2
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 0.2 1.2

execute if entity @s[tag=phase2_started] run return fail
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 0.65 2
data merge entity @s {CustomNameVisible:1b,CustomName:[{\
"translate":"creature.boss.nightmare_wither.name","color":"#17002f","shadow_color":-9043746,"obfuscated":1b}]}