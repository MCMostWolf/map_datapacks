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
execute unless predicate condition:chance/chance50 run return fail
execute at @s positioned ~ ~100 ~ run function tool:quick_cmd/game/spread {num:5,min:2,max:4,float:5}

execute if entity @s[tag=phase2] as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker,limit=3] at @s run return run \
function area:nightmare_tower/eye/attack/_spawn
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker,limit=1] at @s run function area:nightmare_tower/eye/attack/_spawn