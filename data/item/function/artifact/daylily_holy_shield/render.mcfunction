summon minecraft:item_display ~ ~ ~ {"Tags":["loading"],brightness:{block:15,sky:15}}
ride @n[distance=..0.01,type=minecraft:item_display,tag=loading] mount @s
execute on passengers if entity @s[type=minecraft:item_display,tag=loading] run rotate @s ~ ~
execute on passengers if entity @s[type=minecraft:item_display,tag=loading] run tag @s remove loading