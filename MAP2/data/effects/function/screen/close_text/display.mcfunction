
data modify entity @s transformation.scale.[0] set from entity @s transformation.scale.[1]
data merge entity @s {start_interpolation:0,interpolation_duration:4}
tag @s remove closing