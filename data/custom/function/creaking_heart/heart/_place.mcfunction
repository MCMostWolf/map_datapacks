summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["loading"]}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] run \
function custom:creaking_heart/heart/load
#Debug
playsound minecraft:block.creaking_heart.place ambient @a ~ ~ ~ 3 0.7