#计时
scoreboard players add @s skill_time 1
#
execute if score @s skill_time matches 14 run function creature:boss/nightmare_wither/control/special_attack/start
execute if score @s skill_time matches 15..20 run function creature:boss/nightmare_wither/control/special_attack/pre
execute if score @s skill_time matches 37..40 run scoreboard players set #temp1 temp 20
execute if score @s skill_time matches 37..40 run function creature:boss/nightmare_wither/control/special_attack/attack
#重置
execute unless score @s skill_time matches 90.. run return fail
scoreboard players add @s skill_cd 100
function creature:boss/nightmare_wither/control/ability_reset