summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["loading"]}
function tool:quick_cmd/entity/_bond {"bond":"@s","ride":"@n[distance=..0.01,type=minecraft:armor_stand,tag=loading]"}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] run function item:artifact/eye_of_monument/load
particle minecraft:enchant ~ ~0.7 ~ 0.6 1 0.6 0 40 normal
particle minecraft:end_rod ~ ~0.6 ~ 0.3 0.7 0.3 0.1 10 normal
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.4
playsound minecraft:entity.ender_eye.launch player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.ender_eye.launch player @a ~ ~ ~ 1 1.5
playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 1 1.4