particle minecraft:item{item:"amethyst_shard"} ^ ^ ^ 0 10000 0 100 0 normal
#effects minecraft:item{item:chain} ^0.1 ^ ^ 0 100000 0 100 0 normal
#effects minecraft:item{item:chain} ^-0.1 ^ ^ 0 100000 0 100 0 normal
#effects minecraft:item{item:chain} ^ ^0.1 ^ 0 100000 0 100 0 normal
#effects minecraft:item{item:chain} ^ ^-0.1 ^ 0 100000 0 100 0 normal
execute if entity @s[distance=..0.4] run return run scoreboard players reset @s effects
execute if predicate condition:chance/chance20 facing entity @s feet positioned ^0.2 ^ ^0.1 run return run function effects:_test
execute if predicate condition:chance/chance20 facing entity @s feet positioned ^-0.2 ^ ^0.1 run return run function effects:_test
execute if predicate condition:chance/chance20 facing entity @s feet positioned ^0.2 ^ ^ run return run function effects:_test
execute if predicate condition:chance/chance20 facing entity @s feet positioned ^-0.2 ^ ^ run return run function effects:_test
execute facing entity @s feet positioned ^ ^ ^0.1 run return run function effects:_test