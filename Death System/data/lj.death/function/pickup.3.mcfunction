summon minecraft:item ~ ~ ~ {Invulnerable:true,Glowing:true,NoGravity:true,Age:-32768,Item:{id:"minecraft:white_dye"},Tags:["lj.death.T.original_item","lj.death.T.original_item_tmp"]}
$item replace entity @n[type=minecraft:item,distance=..1,tag=lj.death.T.original_item_tmp] contents from entity @s $(slot)
data modify entity @n[type=minecraft:item,distance=..1,tag=lj.death.T.original_item_tmp] Owner set from entity @s UUID
tag @e[type=minecraft:item,distance=..1] remove lj.death.T.original_item_tmp