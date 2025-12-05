
execute positioned ~ ~100 ~ run function tool:quick_cmd/game/spread {num:6,min:2,max:5,float:5}

execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn