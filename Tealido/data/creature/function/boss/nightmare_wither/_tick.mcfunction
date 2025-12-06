#音乐
scoreboard players remove #music cd 1
execute if score #music cd matches ..0 run function creature:boss/nightmare_wither/music with entity @s data.spawnpoint
#凋零清除
execute if score #the_bell_of_justice gamerule matches 1 run effect clear @a[distance=..16] minecraft:wither
#待机
execute if entity @s[tag=!silent] if predicate condition:tick/20t if predicate condition:chance/chance20 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.25 0.7
execute if predicate condition:tick/10t run particle minecraft:falling_obsidian_tear ~ ~0.5 ~ 0.7 0.7 0.7 0.1 10 normal
execute on passengers at @s run function creature:boss/nightmare_wither/render/spin
#锁定
setblock -266 137 156 minecraft:tinted_glass
setblock -266 150 156 minecraft:tinted_glass
#AI加载
execute if entity @s[tag=!wither_loaded] run return run execute if data entity @s {Invul:0} run tag @s add wither_loaded
#传送AI
scoreboard players remove @s skill_cd3 1
execute if predicate condition:tick/20t unless score @s skill_cd3 matches 1.. unless score @s skill matches 1.. \
run function creature:boss/nightmare_wither/control/tp/redo
#回血
execute if predicate condition:tick/20t unless function condition:entity_stats/has_traget run function creature:boss/nightmare_wither/control/healing
#普攻控制
execute as @e[distance=..15,type=minecraft:wither_skull,tag=!loaded] at @s run function creature:boss/nightmare_wither/control/shoot/_shoot
#转阶段
execute if entity @s[tag=phase2,tag=!phase2_started] unless score @s skill matches 1.. run scoreboard players set @s skill 5
execute if entity @s[tag=low_health] unless score @s skill matches 1.. run function creature:boss/nightmare_wither/control/low_health
#技能控制
execute if score @s skill matches 1.. run function creature:boss/nightmare_wither/ability
#冷却
execute if score @s skill matches 1.. run return fail
execute if score @s skill_cd matches 1.. run return run scoreboard players remove @s skill_cd 1
#技能选择
execute unless predicate condition:tick/20t run return fail
execute unless function condition:entity_stats/has_traget run return fail 
scoreboard players set @s skill 1
execute if score @s skill_cd2 matches 1.. run return run scoreboard players remove @s skill_cd2 1
scoreboard players set @s skill 2