playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.35 0.7
execute store result score #temp max_hp run data get entity @s Health 100
function creature:boss/nightmare_wither/control/health