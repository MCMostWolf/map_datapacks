execute if block ~ ~ ~ #minecraft:none unless block ~ ~-0.5 ~ #minecraft:none unless block ~ ~-0.5 ~ minecraft:barrier run return fail
execute if data storage minecraft:tool {allowance:0} run return run kill @s
execute if block ~ ~ ~ #minecraft:none if block ~ ~-0.5 ~ #minecraft:none positioned ~ ~-0.5 ~ run return run function tool:quick_cmd/game/function/spread/low with storage minecraft:tool
execute positioned ~ ~0.5 ~ run function tool:quick_cmd/game/function/spread/high with storage minecraft:tool