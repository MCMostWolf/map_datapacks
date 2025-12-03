execute if block ~ ~ ~ #minecraft:none unless block ~ ~-0.5 ~ #minecraft:none unless block ~ ~-0.5 ~ minecraft:barrier run return run teleport @s ~ ~ ~
$execute if entity @s[distance=..$(allowance)] positioned ~ ~0.5 ~ run return run function tool:quick_cmd/game/function/spread/high with storage minecraft:tool
kill @s