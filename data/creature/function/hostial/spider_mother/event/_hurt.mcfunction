execute positioned ~ ~0.3 ~ run particle minecraft:item{item:"minecraft:cave_spider_spawn_egg"} ^ ^ ^-1 \
0.3 0.3 0.3 0.2 60 normal
playsound minecraft:entity.turtle.egg_crack hostile @a ~ ~ ~ 1 1.7
function creature:hostial/spider_baby/unattack/_spawn
execute if predicate condition:chance/chance50 run return fail
execute positioned ~ ~ ~0.4 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.3 ~ ~0.2 run function creature:hostial/spider_baby/_spawn
playsound minecraft:entity.turtle.egg_crack hostile @a ~ ~ ~ 1 0.7
execute if predicate condition:chance/chance50 run return fail
execute positioned ~ ~ ~-0.4 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.1 ~ ~-0.6 run function creature:hostial/spider_baby/unattack/_spawn

particle minecraft:mycelium ~ ~0.4 ~ 0.7 0.5 0.7 0 40 normal
particle minecraft:ash ~ ~0.4 ~ 0.7 0.5 0.7 0 20 normal