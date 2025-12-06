tag @s add altar
tag @s add altar.item
ride @s mount @n[distance=..0.01,type=minecraft:item_display,tag=loading]
data merge entity @s {transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,0.6   ,0]},start_interpolation:0,interpolation_duration:5,teleport_duration:1,\
item_display:"fixed"}