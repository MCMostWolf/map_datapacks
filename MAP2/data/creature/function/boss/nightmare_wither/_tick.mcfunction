#单独传送
scoreboard players remove @s skill_cd3 1
execute if predicate condition:tick/20t unless score @s skill_cd3 matches 1.. unless score @s skill matches 1.. \
run function creature:boss/nightmare_wither/control/tp/redo
#
execute if predicate condition:tick/20t unless function condition:entity_stats/has_traget run function creature:boss/nightmare_wither/control/healing
#
setblock -266 137 156 minecraft:tinted_glass
setblock -266 150 156 minecraft:tinted_glass
execute if entity @s[tag=!silent] if predicate condition:tick/20t if predicate condition:chance/chance20 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.25 0.7
execute if predicate condition:tick/10t run particle minecraft:falling_obsidian_tear ~ ~0.5 ~ 0.7 0.7 0.7 0.1 10 normal
execute on passengers at @s run function creature:boss/nightmare_wither/render/spin
#execute if entity @s[tag=no_ai] run function creature:boss/nightmare_wither/control/no_ai
#shoot
execute as @e[distance=..15,type=minecraft:wither_skull,tag=!loaded] at @s run function creature:boss/nightmare_wither/control/shoot/_shoot
#技能
execute if score @s skill matches 1.. run function creature:boss/nightmare_wither/ability
#冷却
execute if score @s skill matches 1.. run return fail
execute if score @s skill_cd matches 1.. run return run scoreboard players remove @s skill_cd 1
execute unless predicate condition:tick/20t run return fail
execute unless function condition:entity_stats/has_traget run return fail 
scoreboard players set @s skill 1
execute if score @s skill_cd2 matches 1.. run return run scoreboard players remove @s skill_cd2 1
execute if predicate condition:chance/chance50 run scoreboard players set @s skill 2