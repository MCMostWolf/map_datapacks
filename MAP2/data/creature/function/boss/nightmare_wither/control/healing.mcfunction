execute store result score #temp max_hp run data get entity @s Health 100
execute store result entity @s Health double 0.01 run \
scoreboard players add #temp max_hp 300
function creature:boss/nightmare_wither/control/health