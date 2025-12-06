summon minecraft:block_display ~ ~ ~ {Tags:["teleporter","loading"]}
summon minecraft:interaction ~ ~ ~ {Tags:["loading"],width:1.2,height:2,response:1b}
summon minecraft:item_display ~ ~ ~ {Tags:["loading"]}

execute as @n[type=minecraft:block_display] run function area:_area/teleporter/load