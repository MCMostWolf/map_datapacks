execute if score #difficulty gamerule matches 1 run scoreboard players operation #damage damage *= #math75 math
execute if score #difficulty gamerule matches 2 run scoreboard players operation #damage damage *= #math100 math
execute if score #difficulty gamerule matches 3 run scoreboard players operation #damage damage *= #math150 math
scoreboard players operation #damage damage /= #math100 math
execute store result storage minecraft:tool damage float 0.01 run scoreboard players get #damage damage
function tool:quick_cmd/entity/function/dif_damage with storage minecraft:tool