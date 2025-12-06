
tp @s ~ ~0.8 ~
data modify entity @s NoAI set value 1b
#粒子
execute positioned ~ ~0.3 ~ run particle minecraft:item{item:"minecraft:cave_spider_spawn_egg"} ^ ^ ^-1 \
0.3 0.3 0.3 0.25 60 normal
execute positioned ~ ~0.3 ~ run particle minecraft:item{item:"minecraft:cave_spider_spawn_egg"} ^ ^ ^-1 \
0.3 0.3 0.3 0.15 90 normal
particle minecraft:mycelium ~ ~0.4 ~ 0.7 0.5 0.7 0 40 normal
particle minecraft:ash ~ ~0.4 ~ 0.7 0.5 0.7 0 30 normal

#生成
function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~-0.2 ~ ~0.3 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~-0.5 ~ ~-0.3 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~ ~ ~0.4 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~ ~ ~0.3 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~ ~ ~-0.4 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.3 ~0.3 ~0.2 run function creature:hostial/spider_baby/_spawn
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.shulker_bullet.hit hostile @a ~ ~ ~ 0.8 0.4
execute if predicate condition:chance/chance50 run return fail
execute positioned ~ ~ ~-0.3 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.1 ~ ~-0.6 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.4 ~ ~0.2 run function creature:hostial/spider_baby/_spawn
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 0.5
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 0.5
execute if predicate condition:chance/chance50 run return fail
execute positioned ~0.4 ~ ~-0.2 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.4 ~ ~0.2 run function creature:hostial/spider_baby/unattack/_spawn
execute positioned ~0.3 ~ ~-0.5 run function creature:hostial/spider_baby/_spawn
execute positioned ~0.4 ~ ~0.4 run function creature:hostial/spider_baby/_spawn