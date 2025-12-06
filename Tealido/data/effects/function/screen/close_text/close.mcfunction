
data modify entity @s transformation.scale.[0] set value 0
data merge entity @s {start_interpolation:0,interpolation_duration:4}
tag @s add closing