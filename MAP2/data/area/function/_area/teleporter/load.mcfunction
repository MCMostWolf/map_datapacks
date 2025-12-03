ride @n[type=minecraft:item_display,tag=loading] mount @s
ride @n[type=minecraft:interaction,tag=loading] mount @s
execute on passengers run tag @s remove loading
tag @s remove loading
execute on passengers if entity @s[type=minecraft:interaction] \
run data modify entity @s data.tp_pos.x set from storage minecraft:temp Pos.[0]
execute on passengers if entity @s[type=minecraft:interaction] \
run data modify entity @s data.tp_pos.y set from storage minecraft:temp Pos.[1]
execute on passengers if entity @s[type=minecraft:interaction] \
run data modify entity @s data.tp_pos.z set from storage minecraft:temp Pos.[2]
#Debug
execute on passengers if entity @s[type=minecraft:interaction] \
run scoreboard players operation @s \
skill_cnt = #temp skill_cnt
#
execute store result storage minecraft:temp temp int 1 on passengers if entity @s[type=minecraft:interaction] \
run scoreboard players get @s skill_cnt
function tool:test with storage minecraft:temp