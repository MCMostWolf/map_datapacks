summon minecraft:bogged ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:bogged,tag=loading] run function creature:hostial/verdure_knight/load
