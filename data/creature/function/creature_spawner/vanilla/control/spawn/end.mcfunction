tag @s remove creature_spawner.spawning
data modify entity @s transformation.translation set value [0,0,0]
data modify entity @s transformation.scale set value [1,1,1]
data merge entity @s {start_interpolation:0,interpolation_duration:2}

