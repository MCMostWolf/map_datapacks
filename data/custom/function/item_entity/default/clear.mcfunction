#清除
execute on passengers run kill @s
scoreboard players operation #temp uid = @s uid
execute as @e[distance=..32,type=minecraft:item_display] if score @s uid = #temp uid run kill @s