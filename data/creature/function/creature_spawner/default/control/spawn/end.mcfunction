tag @s remove creature_spawner.spawning
data modify entity @s transformation.translation set value [0,0,0]
data modify entity @s transformation.scale set value [1,1,1]
data merge entity @s {start_interpolation:0,interpolation_duration:2}

playsound minecraft:block.trial_spawner.break block @a ~ ~ ~ 1 0.6
execute on passengers run item modify entity @s contents [{function:"minecraft:set_custom_model_data",strings:{mode:"replace_all",values:["block.creature_spawner.default"]}}]