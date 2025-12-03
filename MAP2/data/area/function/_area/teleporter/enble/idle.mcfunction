execute if entity @s[type=minecraft:item_display] run return run rotate @s ~8 ~
execute if predicate condition:tick/40t run \
playsound minecraft:block.conduit.ambient block @a ~ ~ ~ 0.6 1.5
execute if predicate condition:tick/40t run \
playsound minecraft:block.respawn_anchor.ambient block @a ~ ~ ~ 0.35 1.8
rotate @s ~13 ~
particle minecraft:falling_obsidian_tear ^ ^1.3 ^1 0 0 0 0 0 normal
particle minecraft:falling_obsidian_tear ^ ^1.3 ^-1 0 0 0 0 0 normal
particle minecraft:end_rod ^ ^1.3 ^0.9 0 -10000000 0 10000000 0 normal
particle minecraft:end_rod ^ ^1.3 ^-0.9 0 -10000000 0 10000000 0 normal