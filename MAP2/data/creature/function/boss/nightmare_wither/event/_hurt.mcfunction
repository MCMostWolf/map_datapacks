playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.35 0.7
execute store result score #temp max_hp run data get entity @s Health 100
function creature:boss/nightmare_wither/control/health
execute if score #tear_of_courage gamerule matches 1.. on attacker run effect give @s minecraft:regeneration 1 3 false