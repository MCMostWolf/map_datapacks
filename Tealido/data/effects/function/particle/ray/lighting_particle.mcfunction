particle minecraft:end_rod ^ ^ ^ 0 10000 0 100 0 force
particle minecraft:item{"item":"minecraft:light_blue_wool"} ^0.05 ^ ^ 0 10000 0 100 0 force
particle minecraft:ominous_spawning ^ ^ ^ 0 0 0 0 0 force
execute if predicate chance20 run particle minecraft:wax_off ^ ^ ^ 0 0 0 0 0 force
#particle minecraft:item{item:chain} ^0.1 ^ ^ 0 100000 0 100 0 force
#particle minecraft:item{item:chain} ^-0.1 ^ ^ 0 100000 0 100 0 force
#particle minecraft:item{item:chain} ^ ^0.1 ^ 0 100000 0 100 0 force
#particle minecraft:item{item:chain} ^ ^-0.1 ^ 0 100000 0 100 0 force
execute if entity @s[distance=..0.4] run return run scoreboard players reset @s particle
execute if predicate chance20 facing entity @s feet positioned ^0.2 ^ ^0.1 run return run function effects:particle/ray/lighting_particle
execute if predicate chance20 facing entity @s feet positioned ^-0.2 ^ ^0.1 run return run function effects:particle/ray/lighting_particle
execute if predicate chance20 facing entity @s feet positioned ^0.2 ^ ^ run return run function effects:particle/ray/lighting_particle
execute if predicate chance20 facing entity @s feet positioned ^-0.2 ^ ^ run return run function effects:particle/ray/lighting_particle
execute facing entity @s feet positioned ^ ^ ^0.1 run return run function effects:particle/ray/lighting_particle