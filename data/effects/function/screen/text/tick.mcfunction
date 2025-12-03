execute if entity @s[type=minecraft:player] run return fail
execute on passengers on origin run tag @s add target
execute at @p[tag=target] run tp ~ ~1.62 ~
execute on passengers on origin run tag @s remove target
scoreboard players add @s effects 1
execute if score @s effects matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:4}
execute if score @s effects matches 2 run data modify entity @s transformation.scale.[0] set from entity @s transformation.scale.[1]
