kill @s
function tool:quick_cmd/game/spread {num:6,min:1,max:4,float:5}

execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn
execute if predicate condition:chance/chance50 run return fail 
function tool:quick_cmd/game/spread {num:4,min:1,max:4,float:5}
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn