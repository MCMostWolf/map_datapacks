tag @s add loaded
execute if entity @s[tag=!phase2] if predicate condition:chance/chance30 run return run \
kill @s
execute if entity @s[tag=phase2] if predicate condition:chance/chance10 run return run \
kill @s
execute if entity @e[distance=0.01..15,type=minecraft:wither_skull] run return run \
kill @s
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.35 1.3
