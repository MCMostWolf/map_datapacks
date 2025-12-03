playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1 0.8
playsound minecraft:item.trident.return block @a ~ ~ ~ 1 0.7
playsound minecraft:block.ender_chest.open block @a ~ ~ ~ 1 1.7
playsound minecraft:block.conduit.ambient block @a ~ ~ ~ 1 1.6
execute positioned ~ ~0.7 ~ run function effects:particle/circle/end_rod/mini
execute positioned ~ ~1.6 ~ run function effects:particle/circle/end_rod/mini
execute positioned ~ ~0.4 ~ run function effects:particle/circle/end_rod/mini_out_1
particle minecraft:flash{color:-5479169} ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.5 0.8 0.5 0 30 force
particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.5 0.8 0.5 0 30 force
particle minecraft:firework ~ ~1 ~ 0.2 0.7 0.2 0.3 20 force
particle minecraft:effect ~ ~1 ~ 0.2 0.7 0.2 0.3 15 force