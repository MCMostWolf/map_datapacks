scoreboard players remove #temp1 temp 1
particle minecraft:enchant ^ ^1.6 ^0.9 0 0 0 0 0 force
particle minecraft:end_rod ^ ^1.2 ^1.4 0 0 0 0 0 force
particle minecraft:enchant ^ ^0.8 ^0.9 0 0 0 0 0 force
execute if score #temp1 temp matches 1.. rotated ~18 ~ run return run function item:artifact/eye_of_monument/display
scoreboard players reset #temp1 temp
execute if predicate condition:tick/30t run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 1 1.4
playsound block.note_block.hat player @a ~ ~ ~ 1 1
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 0.3 1.7
execute if predicate condition:tick/10t at @s positioned ~ ~0.5 ~ run function effects:particle/circle/dragon_breath/mini_out
