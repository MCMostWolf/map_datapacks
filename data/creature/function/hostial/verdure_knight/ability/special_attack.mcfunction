#计时
scoreboard players add @s skill_time 1
#
execute if score @s skill_time matches 5 run function creature:hostial/verdure_knight/control/special_attack/start
execute if score @s skill_time matches 15 run function creature:hostial/verdure_knight/control/special_attack/traget
execute if score @s skill_time matches 15 rotated as @s run function creature:hostial/verdure_knight/control/special_attack/pre
execute if score @s skill_time matches 30 run function creature:hostial/verdure_knight/control/special_attack/charge
execute if score @s skill_time matches 27..40 if predicate condition:tick/2t run function creature:hostial/verdure_knight/control/special_attack/attack
execute if score @s skill_time matches 27..40 run particle minecraft:tinted_leaves{color:-2883619} ~ ~1.5 ~ 0 0 0 0 2 normal
execute if score @s skill_time matches 27..40 run particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0 0 normal
#重置
execute unless score @s skill_time matches 50.. run return fail
execute if score @s skill_cnt matches 2.. run return run function creature:hostial/verdure_knight/control/special_attack/redo
scoreboard players add @s skill_cd 100
function creature:hostial/verdure_knight/control/ability_reset