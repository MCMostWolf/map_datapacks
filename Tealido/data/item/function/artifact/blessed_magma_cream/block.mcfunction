execute unless block ~ ~ ~ minecraft:lava run return 1
execute if score @s aft.bmc matches 50.. run return 1
execute if block ~ ~1 ~ minecraft:lava unless block ~ ~2 ~ lava \
unless block ~ ~2 ~ #minecraft:air run return 1
execute if block ~ ~1 ~ minecraft:lava if block ~ ~2 ~ minecraft:lava unless block ~ ~3 ~ #minecraft:air run return 1
return fail