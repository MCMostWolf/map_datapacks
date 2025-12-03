summon minecraft:zombie ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:zombie,tag=loading] run function creature:hostial/pale_zombie/load
