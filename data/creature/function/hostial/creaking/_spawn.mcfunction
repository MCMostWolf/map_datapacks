summon minecraft:creaking ~ ~ ~ {"Tags":["loading"]}

execute positioned as @s run data modify block ~ ~ ~ creaking \
set from entity @n[distance=..16,type=minecraft:creaking,tag=loading] UUID

#execute positioned as @s run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.01 40 normal

function tool:quick_cmd/entity/_bond {"bond":"@n[distance=..0.01,type=minecraft:creaking,tag=loading]","ride":"@s"}

execute as @n[distance=..0.01,type=minecraft:creaking,tag=loading] run function creature:hostial/creaking/load
