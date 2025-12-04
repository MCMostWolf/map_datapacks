execute unless data storage lj.death:cache corpse_pickup.extra.[0] run return 0
summon minecraft:item ~ ~ ~ {Invulnerable:true,Glowing:true,NoGravity:true,Age:-32768,Item:{id:"minecraft:white_dye"},Tags:["lj.death.T.cursor_item","lj.death.T.cursor_item_tmp"]}
data modify entity @n[type=minecraft:item,distance=..1,tag=lj.death.T.cursor_item_tmp] Item set from storage lj.death:cache corpse_pickup.extra.[0]
data modify entity @n[type=minecraft:item,distance=..1,tag=lj.death.T.cursor_item_tmp] Owner set from entity @s UUID
tag @e[type=minecraft:item,distance=..1] remove lj.death.T.cursor_item_tmp
data remove storage lj.death:cache corpse_pickup.extra.[0]
function lj.death:pickup.5