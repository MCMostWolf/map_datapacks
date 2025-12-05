advancement revoke @s only area:hope_fruit
effect give @s minecraft:resistance 3 0 false
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 2
execute if entity @s[tag=hope_fruit_used] run return fail
playsound minecraft:block.conduit.activate player @a ~ ~ ~ 1 1.5
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.4 1.8
execute positioned ~ ~0.4 ~ run function effects:particle/circle/end_rod/mini
execute positioned ~ ~0.4 ~ run function effects:particle/circle/end_rod/mini_out_1
particle minecraft:end_rod ~ ~0.6 ~ 0.3 0.6 0.3 0.01 20 normal
particle minecraft:heart ~ ~0.6 ~ 0.3 0.6 0.3 0.01 10 normal
attribute @s minecraft:max_health modifier add hope_fruit 4 add_value
effect give @s minecraft:regeneration 1 9 false
tag @s add hope_fruit_used