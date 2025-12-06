$summon minecraft:item ~ ~ ~ {Age:0,Invulnerable:1b,PickupDelay:0,Item:{id:"$(id)",count:$(count)},Tags:["loading"]}
data modify entity @n[distance=..0.01,type=minecraft:item,tag=loading] Item.components set from storage minecraft:item drop.components
tag @n[distance=..0.01,type=minecraft:item,tag=loading] remove loading