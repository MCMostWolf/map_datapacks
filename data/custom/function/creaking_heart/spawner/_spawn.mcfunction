execute if entity @e[distance=..0.01,type=minecraft:armor_stand,tag=creaking_heart.spawner] run return fail
execute if entity @e[distance=..0.7,type=minecraft:creaking] run return fail
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["loading"]}
function tool:quick_cmd/entity/_bond {"bond":"@s","ride":"@n[distance=..0.01,type=minecraft:armor_stand,tag=loading]"}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] run \
function custom:creaking_heart/spawner/load
