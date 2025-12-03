particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.9 0.3 0.1 30 normal
particle minecraft:entity_effect{color:-1342132481} ~ ~0.7 ~ 0.3 0.9 0.3 0.1 20 normal
particle minecraft:dripping_water ~ ~0.7 ~ 0.3 0.9 0.3 0.1 40 normal
particle minecraft:flash{color:-9126657} ~ ~0.4 ~ 0 0 0 0 0 normal
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 0.6 1.7
playsound minecraft:block.conduit.activate player @a ~ ~ ~ 1 1
#效果
effect give @s minecraft:night_vision 15
effect give @s minecraft:conduit_power 15
effect give @e[distance=..16,type=!#noplayerne] glowing 15
execute as @e[distance=..16,type=#minecarts] run function item:artifact/heart_of_conduit/minecart
execute positioned ~ ~0.5 ~ run function effects:particle/circle/end_rod/mini_out_2