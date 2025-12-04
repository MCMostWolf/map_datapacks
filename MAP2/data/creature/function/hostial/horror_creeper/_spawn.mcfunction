summon minecraft:creeper ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:creeper,tag=loading] run function creature:hostial/horror_creeper/load
