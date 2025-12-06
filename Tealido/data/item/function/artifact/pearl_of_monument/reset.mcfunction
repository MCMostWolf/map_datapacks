execute as @e[distance=0..,type=minecraft:armor_stand,tag=pom,] if function item:artifact/pearl_of_monument/orign_2 run tag @s add return_success

execute as @e[distance=0..,type=minecraft:armor_stand,tag=pom,tag=return_success] at @s run forceload remove ~6 ~6 ~-6 ~-6

forceload add 3 3
forceload add -59 -49 -59 -42

execute as @e[distance=0..,type=minecraft:armor_stand,tag=pom,tag=return_success] run function item:artifact/pearl_of_monument/clear