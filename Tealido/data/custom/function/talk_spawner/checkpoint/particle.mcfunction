#particle minecraft:dust_color_transition\
{from_color:16762880,scale:2,to_color:15466297} ~ ~ ~ 0.3 0.3 0.3 0.05 3 normal
rotate @s ~8 ~
execute if entity @a[distance=..7,tag=condition.playing] at @s run particle minecraft:falling_obsidian_tear ^ ^0.9 ^0.8 0 -1 0 0.1 0 force
execute if entity @a[distance=..7,tag=condition.playing] at @s run particle minecraft:falling_obsidian_tear ^ ^0.9 ^-0.8 0 -1 0 0.1 0 force
rotate @s ~8 ~
execute if entity @a[distance=..7,tag=condition.playing] at @s run particle minecraft:falling_obsidian_tear ^ ^1 ^0.8 0 -1 0 0.1 0 force
execute if entity @a[distance=..7,tag=condition.playing] at @s run particle minecraft:falling_obsidian_tear ^ ^1 ^-0.8 0 -1 0 0.1 0 force
execute if predicate condition:tick/20t run particle minecraft:end_rod ~ ~1 ~ 2.5 2.7 2.5 0 5 force
execute if predicate condition:tick/10t if entity @a[distance=..16] run particle minecraft:wax_on ~ ~1 ~ 0.5 0.7 0.5 0 2 force
execute if predicate condition:tick/10t if entity @a[distance=..16] run particle minecraft:wax_off ~ ~1 ~ 0.5 0.7 0.5 0 2 force