#计时
scoreboard players add @s skill_time 1
#
execute if score @s skill_time matches 5..1550 positioned ~ ~100 ~ if predicate condition:tick/50t \
run function creature:boss/nightmare_wither/control/invisible/spawning
execute if score @s skill_time matches 5 run \
function creature:boss/nightmare_wither/control/invisible/start with entity @s data.spawnpoint
execute if score @s skill_time matches 200 run \
function creature:boss/nightmare_wither/control/invisible/spawn_1
execute if score @s skill_time matches 400 run \
function creature:boss/nightmare_wither/control/invisible/spawn_2
execute if score @s skill_time matches 650 run \
function creature:boss/nightmare_wither/control/invisible/spawn_3
execute if score @s skill_time matches 850 run \
function creature:boss/nightmare_wither/control/invisible/spawn_4
execute if score @s skill_time matches 1050..1330 if predicate condition:tick/50t run \
function creature:boss/nightmare_wither/control/invisible/spawn_5
execute if score @s skill_time matches 1350 run \
function creature:boss/nightmare_wither/control/invisible/spawn_6
#重置
execute unless score @s skill_time matches 1550.. run return fail
function creature:boss/nightmare_wither/control/invisible/end
scoreboard players add @s skill_cd 70
scoreboard players add @s skill_cd2 2
effect clear
tag @s add phase2_started
function creature:boss/nightmare_wither/control/ability_reset
