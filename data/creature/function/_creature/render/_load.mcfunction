tag @s add render_display
tag @s add creature.bond.passengers
ride @s mount @n[distance=..0.01,tag=loading]
data merge entity @s {start_interpolation:0,teleport_duration:1,interpolation_duration:1}