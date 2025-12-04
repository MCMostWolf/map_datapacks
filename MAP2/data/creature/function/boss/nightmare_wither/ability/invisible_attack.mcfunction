#计时
scoreboard players add @s skill_time 1
#
execute if score @s skill_time matches 10 run function creature:boss/nightmare_wither/control/invisible_attack/hide \
with entity @s data.spawnpoint
execute if score @s skill_time matches 40 run function creature:boss/nightmare_wither/control/invisible_attack/pre
execute if score @s skill_time matches 50 if predicate condition:tick/50t run scoreboard players set @s skill_time 150
execute if score @s skill_time matches 50..360 run function creature:boss/nightmare_wither/control/invisible_attack/attack
execute if score @s skill_time matches 40..390 run particle minecraft:squid_ink ~ ~-1.5 ~ 0 1 0 0.1 1 normal

execute if score @s skill_time matches 390 run function creature:boss/nightmare_wither/control/invisible_attack/visible
#重置
execute unless score @s skill_time matches 400.. run return fail
scoreboard players add @s skill_cd 100
scoreboard players add @s skill_cd2 2
effect clear
function creature:boss/nightmare_wither/control/ability_reset
