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
execute at @s run function creature:boss/nightmare_wither/control/tp/tp
execute if entity @s[tag=!phase2] run return fail
function tool:quick_cmd/game/spread {num:3,min:2,max:5,float:5}
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn