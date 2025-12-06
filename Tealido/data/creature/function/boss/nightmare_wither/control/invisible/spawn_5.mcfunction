execute positioned ~ ~100 ~ as @a[tag=condition.playing,distance=..20] at @s run function area:nightmare_tower/eye/attack/_spawn

execute positioned ~ ~100 ~ run function tool:quick_cmd/game/spread {num:9,min:2,max:5,float:5}

execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function area:nightmare_tower/eye/attack/_spawn