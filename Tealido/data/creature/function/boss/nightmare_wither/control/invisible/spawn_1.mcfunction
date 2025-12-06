function creature:boss/nightmare_wither/control/invisible/spawn

execute positioned ~ ~100 ~ run function tool:quick_cmd/game/spread {num:3,min:5,max:8,float:5}

data modify storage minecraft:tool creature_spawner merge value {spawn_range:100,active_range:5,max_spawner_cd:500,min_spawner_cd:400,\
spawn_count:1,spawn_creature_count:1,spawn_creature_id:"silent_archer",creature_spawner_type:"vanilla"}

execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function creature:boss/nightmare_wither/control/invisible/_spawn
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s \
align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run function creature:creature_spawner/vanilla/_place