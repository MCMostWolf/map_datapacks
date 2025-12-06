scoreboard players operation #temp uid = @s uid
execute as @e[type=!minecraft:player] if score @s uid = #temp uid run function tool:quick_cmd/entity/function/passengers_kill
execute as @e[type=!minecraft:player] if score @s uid = #temp uid run function tool:quick_cmd/entity/function/vehicle_kill