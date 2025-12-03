#高度修正
$teleport @s ~ $(Height) ~
#位置修正
execute at @s run function tool:quick_cmd/game/function/spread/pos
execute at @s if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~