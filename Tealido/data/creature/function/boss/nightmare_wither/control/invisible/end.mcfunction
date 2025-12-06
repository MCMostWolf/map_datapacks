
tp ~ ~100 ~
tag @s remove invisible
tag @s remove silent
tag @s remove no_ai
tag @s remove unmove
tag @s remove invisible
attribute @s minecraft:scale modifier remove minecraft:skill
execute at @s run playsound minecraft:block.ender_chest.open hostile @a ~ ~ ~ 1 1.6
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.2 80 normal
execute at @s run particle minecraft:flash{color:-11075430} ~ ~ ~ 0 0 0 0.2 1 normal
execute at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.2

function creature:boss/nightmare_wither/control/invisible/spawn

execute on passengers run data modify entity @s transformation.scale set value [1.5,1.5,1.5]

execute at @s positioned ~ ~0.5 ~ run function effects:particle/circle/squid_ink/normal_out_1
execute at @s positioned ~ ~0.5 ~ run function effects:particle/circle/squid_ink/mini_out_1
execute at @s positioned ~ ~0.5 ~ run function effects:particle/circle/sculk_soul/mini_out
execute at @s positioned ~ ~0.5 ~ run function effects:particle/circle/soul_fire_flame/normal_out

execute at @s positioned ~ ~-3 ~ run function tool:quick_cmd/game/spread {num:7,min:2,max:8,float:5}
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn

execute if entity @s[tag=phase2_started] run return fail
data merge entity @s {CustomNameVisible:1b,CustomName:[{\
"translate":"creature.boss.nightmare_wither.name","color":"#17002f","shadow_color":-9043746,"obfuscated":0b}]}