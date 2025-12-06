
#playsound minecraft:item.trident.return block @a ~ ~ ~ 0.5 1.7
playsound minecraft:entity.illusioner.cast_spell block @a ~ ~ ~ 0.4 1.7
playsound minecraft:entity.illusioner.mirror_move block @a ~ ~ ~ 0.8 0.7
playsound block.respawn_anchor.set_spawn block @a ~ ~ ~ 0.2 1.3
execute positioned ~ ~0.4 ~ run function effects:particle/circle/end_rod/mini
particle minecraft:flash{color:-5479169} ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.5 0.8 0.5 0 30 force
particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.5 0.8 0.5 0 30 force
particle minecraft:firework ~ ~1 ~ 0.2 0.7 0.2 0.3 15 force