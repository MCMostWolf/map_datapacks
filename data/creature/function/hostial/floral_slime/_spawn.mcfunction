summon minecraft:slime ~ ~ ~ {"Tags":["loading"],Size:0}
execute as @n[distance=..0.01,type=minecraft:slime,tag=loading] run function creature:hostial/floral_slime/load
