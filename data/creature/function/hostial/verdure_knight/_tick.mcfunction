execute if predicate condition:tick/10t run particle minecraft:tinted_leaves{color:-2883619} ~ ~1.5 ~ 0.3 0.5 0.3 0 3 normal
particle minecraft:item{item:"minecraft:azalea_leaves"} ~ ~1.5 ~ 0.2 0.8 0.2 0 2 normal
#技能
execute if score @s skill matches ..1 run function creature:hostial/verdure_knight/ability
#冷却
execute if score @s skill_cd matches 1.. run return run scoreboard players remove @s skill_cd 1
execute if score @s skill matches 1.. run return fail
execute unless predicate condition:tick/20t run return fail
execute on target run tag @s add skill_traget
execute if entity @a[tag=skill_traget,distance=..8] run scoreboard players set @s skill 1
execute on target run tag @s remove skill_traget