execute if predicate condition:tick/3t rotated as @n[type=minecraft:armor_stand,tag=target,distance=0..] run return run rotate @s ~ ~
execute if predicate condition:chance/chance50 run rotate @s ~3.5 ~
execute if predicate condition:chance/chance50 run rotate @s ~-3.5 ~
execute if predicate condition:chance/chance50 run rotate @s ~ ~2
execute if predicate condition:chance/chance50 run rotate @s ~ ~-2
execute unless predicate condition:chance/chance30 at @s run function effects:screen/shake/shake
#rotate @s facing ^0.3 ^ ^10