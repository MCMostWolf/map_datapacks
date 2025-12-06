function creature:_creature/render/_load
#
tag @s add hat
item replace entity @s contents with minecraft:spore_blossom
data merge entity @s {transformation:{left_rotation:[0,0,1,0],scale:[1,1,1],right_rotation:[0,0,0,1],translation:[0,0.5,0]},teleport_duration:20}