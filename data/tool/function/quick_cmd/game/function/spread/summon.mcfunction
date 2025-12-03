scoreboard players remove #spread int 1
execute summon minecraft:marker run tag @s add SpreadMarker
execute if score #spread int matches 1.. run function tool:quick_cmd/game/function/spread/summon