effect give @s minecraft:slowness 5 255 false
effect give @s minecraft:wither 5 3 false

summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["loading"]}
function tool:quick_cmd/entity/_bond {"bond":"@p[tag=clicker]","ride":"@n[distance=..0.01,type=minecraft:armor_stand,tag=loading]"}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] run \
function item:artifact/flower_of_gluttony/load


particle minecraft:dust_color_transition{from_color:16759552,scale:1.8,to_color:15087104} \
~ ~ ~ 0.4 0.6 0.4 0 40 normal
particle minecraft:wax_on \
~ ~ ~ 0.4 0.6 0.4 2 40 normal
particle minecraft:damage_indicator \
~ ~ ~ 0.4 0.6 0.4 2 10 normal

playsound minecraft:entity.creaking.activate player @a ~ ~ ~ 1 1.4