summon minecraft:item_display ~ ~ ~ {"Tags":["loading"],brightness:{block:15,sky:15},\
Glowing:1b,glow_color_override:8549838,start_interpolation:0,interpolation_duration:2,\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0,0]},\
billboard:"center"}
ride @n[distance=..0.01,type=minecraft:item_display,tag=loading] mount @s
execute on passengers if entity @s[type=minecraft:item_display,tag=loading] run loot replace entity @s contents loot item:artifact/pearl_of_monument
execute on passengers if entity @s[type=minecraft:item_display,tag=loading] run rotate @s ~ ~
execute on passengers if entity @s[type=minecraft:item_display,tag=loading] run tag @s remove loading