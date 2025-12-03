execute if entity @s[type=minecraft:player] run return fail
function effects:screen/_tick
execute on vehicle run function effects:screen/italic_text/rotate
execute on passengers on origin run tag @s add target
execute at @p[tag=target] on vehicle run tp ~ ~1.62 ~
execute on passengers on origin run tag @s remove target
scoreboard players add @s effects 1
execute if score @s effects matches 2 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:4}
execute if score @s effects matches 2 on vehicle run data modify entity @s transformation.scale.[0] set from entity @s transformation.scale.[1]
