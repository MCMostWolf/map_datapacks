#execute if score @s area_title matches 1.. run function area:sculkvale_den/title
execute as @e[type=minecraft:marker,tag=nightmare_tower_eye.attack] at @s \
run function area:nightmare_tower/eye/attack/_tick
execute as @e[scores={nightmare_eye=1..}] at @s run function area:nightmare_tower/eye/attack/traget_tick
execute positioned -265.5 173.5 156.5 as @e[type=minecraft:item_display,tag=nightmare_tower_eye,distance=..0.01] at @s \
run function area:nightmare_tower/eye/_tick
execute positioned -265.5 139.03125 150.5 as @e[distance=..0.01,type=minecraft:item_frame] run function area:nightmare_tower/tower_stone/_tick
execute positioned -259.5 139.03125 156.5 as @e[distance=..0.01,type=minecraft:item_frame] run function area:nightmare_tower/tower_stone/_tick
execute positioned -265.5 139.03125 162.5 as @e[distance=..0.01,type=minecraft:item_frame] run function area:nightmare_tower/tower_stone/_tick
execute if score #wither gamerule matches 1 run return fail
execute if entity @e[type=minecraft:wither] run return fail
execute positioned -272 139 157 run function area:nightmare_tower/soul_sand
execute positioned -272 139 156 run function area:nightmare_tower/soul_sand
execute positioned -272 139 155 run function area:nightmare_tower/soul_sand
execute positioned -272 138 156 run function area:nightmare_tower/soul_sand