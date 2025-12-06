#被破坏
execute if score #withering gamerule matches 1 if entity @s[tag=creature_spawner.unbreak] run return run function creature:creature_spawner/nightmare/event/unbreak
execute unless score #wither gamerule matches 1.. if entity @s[tag=creature_spawner.unbreak] run return run function creature:creature_spawner/nightmare/event/unbreak
tag @s add creature_spawner.broken
data merge entity @s {start_interpolation:0,interpolation_duration:2}
data modify entity @s transformation.scale set value [0,1,0]
execute on passengers run data modify entity @s transformation.scale set value [0,1,0]
#效果
playsound minecraft:entity.ender_eye.death block @a ~ ~ ~ 0.3 1.3
playsound minecraft:block.spawner.break block @a ~ ~ ~ 0.8 1
particle minecraft:item{item:{id:"minecraft:spawner",components:{"minecraft:custom_model_data":{strings:["block.creature_spawner.nightmare"]}}}} ~ ~0.25 ~ 0.3 0.3 0.3 0.07 50 normal