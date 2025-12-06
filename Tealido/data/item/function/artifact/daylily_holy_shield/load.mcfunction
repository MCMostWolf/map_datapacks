item replace entity @s armor.head with minecraft:acacia_boat[item_model="minecraft:air",\
minecraft:enchantments={"item:daylily_holy_shield":1}]
rotate @s ~ 0
execute rotated ~ 0 run function item:artifact/daylily_holy_shield/render
execute rotated ~120 0 run function item:artifact/daylily_holy_shield/render
execute rotated ~-120 0 run function item:artifact/daylily_holy_shield/render
execute on passengers if entity @s[type=minecraft:item_display] run data merge entity @s {start_interpolation:0,interpolation_duration:10,teleport_duration:1,\
transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0,0,0],translation:[0,0,2]}}
execute on passengers if entity @s[type=minecraft:item_display] run loot replace entity @s contents loot item:artifact/daylily_holy_shield
#ride
summon minecraft:item_display ~ ~ ~ {"Tags":["loading"],teleport_duration:1}
ride @s mount @n[distance=..0.01,type=minecraft:item_display,tag=loading]
execute on vehicle run tag @s remove loading


tag @s remove loading