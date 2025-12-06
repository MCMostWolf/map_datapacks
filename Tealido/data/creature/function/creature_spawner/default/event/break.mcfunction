#被破坏
tag @s add creature_spawner.broken
data merge entity @s {start_interpolation:0,interpolation_duration:2}
data modify entity @s transformation.scale set value [0,1,0]
execute on passengers run data modify entity @s transformation.scale set value [0,1,0]
#效果
function creature:creature_spawner/default/event/loot/_spawn
playsound minecraft:block.trial_spawner.break block @a ~ ~ ~ 0.5 0.8
playsound minecraft:block.glass.break block @a ~ ~ ~ 0.5 0.6
particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0.05 6 normal
particle minecraft:item{item:{id:"minecraft:spawner",components:{"minecraft:custom_model_data":{strings:["block.creature_spawner.default"]}}}} ~ ~0.25 ~ 0.3 0.3 0.3 0.07 50 normal
function creature:creature_spawner/default/particle/circle3