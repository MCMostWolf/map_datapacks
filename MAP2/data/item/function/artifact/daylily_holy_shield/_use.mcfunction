summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["loading"]}
function tool:quick_cmd/entity/_bond {"bond":"@s","ride":"@n[distance=..0.01,type=minecraft:armor_stand,tag=loading]"}
execute as @n[distance=..0.01,type=minecraft:armor_stand,tag=loading] run \
function item:artifact/daylily_holy_shield/load
#
execute positioned ~ ~0.5 ~ run function effects:particle/circle/wax_on/mini_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/wax_on/normal_out_1
execute positioned ~ ~0.5 ~ run function effects:particle/circle/small_flame/mini_out
playsound minecraft:entity.creaking.activate player @a ~ ~ ~ 1 1.4
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.3 1.8
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.4 1.6