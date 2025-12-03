
execute unless score @s artifact_cd matches -357 run playsound minecraft:music_disc.wait record @s ~ ~ ~ 99999999999999999999 1
scoreboard players set @s artifact_cd -357

particle minecraft:item{"item":"cake"} ~ ~1 ~ 0.8 1 0.8 0.05 200 force
particle minecraft:end_rod ~ ~0.6 ~ 0.3 0.6 0.3 0.1 80 force
particle minecraft:firework ~ ~0.6 ~ 0.3 0.6 0.3 0.1 80 force
particle minecraft:flash{color:-1} ~ ~0.6 ~ 0.3 0.6 0.3 0.1 5 force
execute positioned ~ ~0.8 ~ run function effects:particle/circle/end_rod/mini_1
execute positioned ~ ~0.4 ~ run function effects:particle/circle/end_rod/normal_out_1
execute positioned ~ ~0.4 ~ run function effects:particle/circle/end_rod/normal_out_2
execute positioned ~ ~1.3 ~ run function effects:particle/circle/firework/mini_1
execute positioned ~ ~0.8 ~ run function effects:particle/circle/firework/mini_1
execute positioned ~ ~0.8 ~ run function effects:particle/spiral/firework/circle_mini
playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.5 0.7
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 0
effect give @s minecraft:strength 20 9
effect give @s minecraft:resistance 20 9
effect give @s minecraft:regeneration 20 9
effect give @s minecraft:night_vision infinite 9