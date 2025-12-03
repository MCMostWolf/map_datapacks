summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_boat",components:{"minecraft:item_model":"minecraft:air"}},Invulnerable:1b,PickupDelay:0,Tags:["loading_2"]}
item replace entity @n[distance=..0.01,type=minecraft:item,tag=loading_2] contents from entity @s contents
tag @n[distance=..0.01,type=minecraft:item,tag=loading_2] remove loading_2