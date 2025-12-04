execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {"Tags":["loading","creature_spawner"],teleport_duration:1}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ minecraft:spawner
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=loading,distance=..0.01] at @s run function creature:creature_spawner/nightmare/load
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 1.2
playsound minecraft:item.glow_ink_sac.use block @a ~ ~ ~ 1 0