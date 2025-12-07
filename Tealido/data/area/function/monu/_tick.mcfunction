execute positioned -176 126 127 if block ~ ~ ~ minecraft:lime_wool \
align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0 2 normal
execute positioned -174 127 130 if block ~ ~ ~ minecraft:white_wool \
align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 1 normal
execute positioned -173 128 133 if block ~ ~ ~ minecraft:purple_wool \
align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 0 3 normal
execute positioned -174 127 136 if block ~ ~ ~ minecraft:blue_wool \
align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:bubble_pop ~ ~ ~ 0.5 0.5 0.5 0 9 normal
execute positioned -176 126 139 if block ~ ~ ~ minecraft:black_wool \
align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0 1 normal



execute unless score #lime gamerule matches 1 positioned -176 126 127 if block ~ ~ ~ minecraft:lime_wool \
align xyz positioned ~0.5 ~1 ~0.5 run function area:monu/lime
execute unless score #white gamerule matches 1 positioned -174 127 130 if block ~ ~ ~ minecraft:white_wool \
align xyz positioned ~0.5 ~1 ~0.5 run function area:monu/white
execute unless score #purple gamerule matches 1 positioned -173 128 133 if block ~ ~ ~ minecraft:purple_wool \
align xyz positioned ~0.5 ~1 ~0.5 run function area:monu/purple
execute unless score #blue gamerule matches 1 positioned -174 127 136 if block ~ ~ ~ minecraft:blue_wool \
align xyz positioned ~0.5 ~1 ~0.5 run function area:monu/blue
execute unless score #black gamerule matches 1 positioned -176 126 139 if block ~ ~ ~ minecraft:black_wool \
align xyz positioned ~0.5 ~1 ~0.5 run function area:monu/black
execute unless score #monu_title gamerule matches -2147483648..2147483647 run scoreboard players set #monu_title gamerule -30
execute if score #monu gamerule matches 5.. run function area:monu/finish