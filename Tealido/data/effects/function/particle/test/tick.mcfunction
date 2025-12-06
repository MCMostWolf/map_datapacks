execute if entity @s[type=minecraft:player] run return fail
execute on passengers on origin run tag @s add target
execute facing entity @n[tag=target] feet run function effects:particle/test/move
scoreboard players add @s particle 1
execute if score @s particle matches 1..40 at @s run return run function effects:particle/test/tick
scoreboard players reset @s particle
scoreboard players add @s tick 1
execute if score @s tick matches 60.. unless score @s particle_type matches 5 on passengers run kill @s
execute if score @s tick matches 60.. unless score @s particle_type matches 5 run kill @s
execute on passengers on origin if entity @s[distance=1..] run return run tag @s remove target
execute on passengers run kill @s
execute run kill @s