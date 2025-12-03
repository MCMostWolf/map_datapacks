##by Plants_Stars
#用于维持当前高度的情况下进行随机扩散
#参数 function tool:quick_cmd/game/spread {num:扩散点数量(整型),min:扩散点之间的最小距离(浮点数),max:扩散最大距离(浮点型),float:高度最大偏差(0.5正倍数)}
function tool:quick_cmd/game/function/spread/clear
$scoreboard players set #spread int $(num)
$data modify storage minecraft:tool allowance set value $(float)
execute align y run function tool:quick_cmd/game/function/spread/summon
#高度
execute align y run data modify storage minecraft:tool Height set from entity @n[type=minecraft:marker,tag=SpreadMarker,distance=..0.01] Pos[1]
#扩散
$execute align y run spreadplayers ~ ~ $(min) $(max) false @e[distance=..0.01,type=minecraft:marker,tag=SpreadMarker]
execute as @e[distance=0..,type=minecraft:marker,tag=SpreadMarker] at @s run function tool:quick_cmd/game/function/spread/set with storage minecraft:tool
#清除
schedule function tool:quick_cmd/game/function/spread/clear 1t replace