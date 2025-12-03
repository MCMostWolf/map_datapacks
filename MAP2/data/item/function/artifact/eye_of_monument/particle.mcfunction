particle minecraft:enchant ~ ~0.7 ~ 0.6 1 0.6 0 70 force
particle minecraft:end_rod ~ ~0.6 ~ 0.3 0.7 0.3 0.1 20 force
particle minecraft:dust_color_transition{from_color:6357097,scale:1.5,to_color:16711922} ~ ~0.7 ~ 0.6 1 0.6 0 50 force
execute positioned ~ ~0.7 ~ run function effects:particle/circle/end_rod/mini_out_1
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0.7