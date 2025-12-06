execute if entity @s[gamemode=adventure] run scoreboard players set #temp temp 1
execute if entity @s[gamemode=creative] run scoreboard players set #temp temp 2
execute if entity @s[gamemode=survival] run scoreboard players set #temp temp 3
gamemode creative @s
#传送爆炸位置
execute positioned ~ -100 ~ rotated as @s run teleport @s ~ ~ ~ ~ ~
#爆炸
execute positioned as @s positioned ~ ~-0.8 ~ summon minecraft:end_crystal run damage @s 0.01 arrow
execute positioned as @s positioned ~ ~-0.8 ~ summon minecraft:end_crystal run damage @s 0.01 arrow
#返回原位置
execute rotated as @s run teleport @s ~ ~ ~ ~ ~

execute if score #temp temp matches 1 run gamemode adventure @s
execute if score #temp temp matches 3 run gamemode survival @s