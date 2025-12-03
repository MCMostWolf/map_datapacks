execute unless block ~ ~ ~ minecraft:creaking_heart positioned ^ ^ ^0.25 if entity @s[distance=..20] \
run return run function custom:creaking_heart/place
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[distance=..0.05,type=minecraft:armor_stand,tag=creaking_heart.heart] \
run return fail
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function custom:creaking_heart/heart/_place