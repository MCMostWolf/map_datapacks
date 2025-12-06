#被破坏
tag @s add creature_spawner.broken
data merge entity @s {start_interpolation:0,interpolation_duration:2}
data modify entity @s transformation.scale set value [0,1,0]
execute on passengers run data modify entity @s transformation.scale set value [0,1,0]
#效果
playsound minecraft:block.trial_spawner.break block @a ~ ~ ~ 0.2 1.3
playsound minecraft:block.spawner.break block @a ~ ~ ~ 0.8 1
particle minecraft:item{item:{id:"minecraft:spawner",components:{"minecraft:custom_model_data":{strings:["block.creature_spawner.vanilla"]}}}} ~ ~0.25 ~ 0.3 0.3 0.3 0.07 50 normal