tag @s add loaded
execute if predicate condition:chance/chance50 run return run \
kill @s
execute if entity @e[distance=0.01..15,type=minecraft:wither_skull] run return run \
kill @s
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.35 1.3
