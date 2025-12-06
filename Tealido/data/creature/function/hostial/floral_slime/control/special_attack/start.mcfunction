particle minecraft:firework ~ ~1.5 ~ 0 0 0 0.2 10 normal
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 0.4 1.35
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 0.8 1.2

execute if items entity @s weapon.offhand minecraft:shield \
if predicate condition:chance/chance50 run return run scoreboard players set @s skill_cnt 1

execute unless items entity @s weapon.offhand minecraft:shield \
if predicate condition:chance/chance50 run return run scoreboard players set @s skill_cnt 3
scoreboard players set @s skill_cnt 2