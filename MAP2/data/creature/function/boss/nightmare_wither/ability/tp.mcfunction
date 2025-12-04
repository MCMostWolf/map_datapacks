#计时
scoreboard players add @s skill_time 1
#
execute if score @s skill_time matches 5 run \
function creature:boss/nightmare_wither/control/tp/start with entity @s data.spawnpoint
execute if score @s skill_time matches 20 run function creature:boss/nightmare_wither/control/tp/end
#重置
execute unless score @s skill_time matches 21.. run return fail
execute if score @s skill_cd matches 1.. run return run function creature:boss/nightmare_wither/control/tp/cd
function creature:boss/nightmare_wither/control/ability_reset
scoreboard players set @s skill 1
scoreboard players set @s skill_time 13