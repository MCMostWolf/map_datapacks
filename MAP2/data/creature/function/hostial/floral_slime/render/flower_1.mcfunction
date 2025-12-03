function creature:_creature/render/_load
#
tag @s add hat_1
item replace entity @s contents with minecraft:verdant_froglight
data merge entity @s {transformation:{left_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],right_rotation:[0,0,0,1],translation:[0,0.15,0]},teleport_duration:20,brightness:{block:5,sky:7}}